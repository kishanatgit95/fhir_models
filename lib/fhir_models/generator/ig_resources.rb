module FHIR
  class Generator
    class IGResources
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

      def value_sets
        resources_by_type['ValueSet']
      end

      def merge_value_set(value_set)
        url = value_set['url']
        vs = value_sets.find { |vs| vs['url'] == url}

        if vs.nil?
          resources_by_type['ValueSet'] << value_set
        else
          if vs['expansion'].nil? && !value_set['expansion'].nil?
            vs['expansion'] = value_set['expansion']
          elsif vs['compose'].nil? && !value_set['compose'].nil?
            vs['compose'] = value_set['compose']
          else
            puts "Cannot merget ValueSet #{url}"
          end
        end
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

      def resources_by_type
        @resources_by_type ||= Hash.new { |hash, key| hash[key] = [] }
      end
    end
  end
end
