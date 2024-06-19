module FHIR
  class Generator
    class IGResources
      def resources_by_type
        @resources_by_type ||= Hash.new { |hash, key| hash[key] = [] }
      end

      def add(resource, break_bundle: false)
        return if resource.nil?

        if (break_bundle && resource['resourceType'] == 'Bundle')
          resource['entry']&.each do |entry|
            entry_resource = entry['resource']
            next if entry_resource.nil?

            if (resource['resourceType'] == 'ValueSet')
              merge_value_set(value_set)
            else
              resources_by_type[resource['resourceType']] << entry_resource
            end
          end
        else
          resources_by_type[resource['resourceType']] << resource
        end
      end

      # def capability_statement(mode = 'server')
      #   resources_by_type['CapabilityStatement'].find do |capability_statement_resource|
      #     capability_statement_resource.rest.any? { |r| r.mode == mode }
      #   end
      # end

      # def ig
      #   resources_by_type['ImplementationGuide'].first
      # end

      # def inspect
      #   'IGResources'
      # end

      def primitive_types
        resources_by_type['StructureDefinition'].select { |sd| sd['kind'] == 'primitive-type' }
      end

      def complex_types
        resources_by_type['StructureDefinition'].select { |sd| sd['kind'] == 'complex-type' && sd['derivation'] != 'constraint'}
      end

      def resource_definitions
        resources_by_type['StructureDefinition'].select { |sd| sd['kind'] == 'resource' && sd['derivation'] != 'constraint' }
      end

      def code_systems(url)
        resources_by_type['CodeSystem'].find { |cs| cs['url'] == url}
      end

      def value_sets(url)
        resources_by_type['ValueSet'].find { |vs| vs['url'] == url}
      end

      def transformed_expansion
        @transformed_expansion ||= {}
      end

      def merge_value_set(from_value_set)
        url = from_value_set['url']
        to_value_set = value_sets(url)

        if vs.nil?
          resources_by_type['ValueSet'] << from_value_set
        else
          if to_value_set['expansion'].nil? && !from_value_set['expansion'].nil?
            to_value_set['expansion'] = from_value_set['expansion']
          elsif to_value_set['compose'].nil? && !from_value_set['compose'].nil?
            to_value_set['compose'] = from_value_set['compose']
          else
            puts "Cannot merget ValueSet #{url}"
          end
        end
      end

      def get_codes(url)
        return nil if url.nil?
        return transformed_expansion[url] if transformed_expansion[url]

        value_set = value_sets(url)
        unless value_set.nil?
          transformed_expansion[url] = {}
          # if the expansion is completed already, use it...
          # except for http://hl7.org/fhir/ValueSet/c80-doc-typecodes, because that expansion is missing codes
          if value_set.dig('expansion', 'contains') && uri != 'http://hl7.org/fhir/ValueSet/c80-doc-typecodes'
            transformed_expansion[url] = value_set['expansion']['contains']
              .group_by { |coding| coding['system'] }
              .transform_values { |v| v.map { |coding| coding['code'] } }
          elsif !value_set['compose'].nil?
            # the expansion is not available, so we have to include values
            # and possibly partially expand the Valueset by including extra CodeSystems
            # So, for each system, if codes are included add them...
            value_set['compose']['include']&.each do |include_element|
              system_url = include_element['system']
              next if system_url.nil?
              included_codes = codes_from_compose(include_element)

              transformed_expansion[url][system_url] = included_codes unless included_codes.empty?
            end

            value_set['compose']['exclude']&.each do |exclude_element|
              system_url = exclude_element['system']
              next if system_url.nil?
              excluded_codes = codes_from_compose(exclude_element)

              if transformed_expansion[url].has_key?(system_url)
                transformed_expansion[url][system_url] = transformed_expansion[url][system_url] - excluded_codes
                transformed_expansion[url].delete(system_url) if transformed_expansion[url][system_url].empty?
              end
            end
          end
          @@cache[uri].each { |_system, codes| codes.uniq! }
        end
        @@cache[uri]

      end

      def codes_from_compose(backbone_element)
        collected_codes = []
        system_url = backbone_element['system']

        if !system_url.nil?
          if !backbone_element['concept'].nil?
            backbone_element['concept'].each { |coding| collected_codes << coding['code'] }
          if backbone_element['filter'].nil?
            # i.e. the include/exclude element has 'system', 'copyright' and/or 'version'
            code_systems.each do |cs|
              cs['concept']&.each { |concept| collected_codes << y['code'] }
            end
          end
        elsif !backbone_element['valueSet'].nil?
          # Handle include/exclude value set
        end

        collected_codes
      end

      # def profile_by_url(url)
      #   resources_by_type['StructureDefinition'].find { |profile| profile.url == url }
      # end

      # def resource_for_profile(url)
      #   resources_by_type['StructureDefinition'].find { |profile| profile.url == url }.type
      # end

      # def value_set_by_url(url)
      #   resources_by_type['ValueSet'].find { |profile| profile.url == url }
      # end

      # def code_system_by_url(url)
      #   resources_by_type['CodeSystem'].find { |system| system.url == url }
      # end

      # def search_param_by_resource_and_name(resource, name)
      #   # remove '_' from search parameter name, such as _id or _tag
      #   normalized_name = normalized_name = name.to_s.delete_prefix('_')

      #   resources_by_type['SearchParameter']
      #     .find { |param| param.id == "us-core-#{resource.downcase}-#{normalized_name}" }
      # end

      # private
    end
  end
end
