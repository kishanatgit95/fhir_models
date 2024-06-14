module FHIR
  class Generator
    class MetadataGenerator
      attr_accessor :ig_resources, :base_output_dir

      def initialize(ig_resources, base_output_dir)
        self.ig_resources = ig_resources
        self.base_output_dir = base_output_dir
      end

      def output_file_name
        File.join(base_output_dir, 'metadata.rb')
      end

      def generate
        template = FHIR::Boot::Template.new([], true)

        primitives = ig_resources.primitive_types
        hash = {}
        primitives.each do |p|
          field = FHIR::Field.new
          field.name = nil

          # try to find the element that describes the value
          type = p['snapshot']['element'].select { |e| e['path'].end_with?('.value') }.first['type'].first

          # try to find the JSON data type
          field.type = type['code'].gsub('http://hl7.org/fhirpath/System.', '').downcase

          # try to find a regex
          if type['extension']
            ext = type['extension'].find { |e| e['url'] == 'http://hl7.org/fhir/StructureDefinition/regex' }
            field.regex = ext['valueString'] if ext
          end

          hash[p['id']] = field.serialize
        end

        template.constants['PRIMITIVES'] = hash

        template.constants['TYPES'] = ig_resources.complex_types.map { |t| t['id'] }

        # resources
        template.constants['RESOURCES'] = ig_resources.resource_definitions.map { |r| r['id'] }

        file = File.open(output_file_name, 'w:UTF-8')
        file.write(template.to_s)
        file.close

      end

      def add_special_tests
        return if group_metadata.reformatted_version == 'v311'

        case group_metadata.resource
        when 'DocumentReference'
          group_metadata.add_test(
            id: 'us_core_v400_document_reference_custodian_test',
            file_name: '../../custom_groups/v4.0.0/document_reference_custodian_test.rb'
          )
        end
      end

      def test_id_list
        @test_id_list ||=
          group_metadata.tests.map { |test| test[:id] }
      end

      def test_file_list
        @test_file_list ||=
          group_metadata.tests.map do |test|
            name_without_suffix = test[:file_name].delete_suffix('.rb')
            name_without_suffix.start_with?('..') ? name_without_suffix : "#{profile_identifier}/#{name_without_suffix}"
          end
      end

      def required_searches
        group_metadata.searches.select { |search| search[:expectation] == 'SHALL' }
      end

      def search_param_name_string
        required_searches
          .map { |search| search[:names].join(' + ') }
          .map { |names| "* #{names}" }
          .join("\n")
      end

      def search_description
        return '' if required_searches.blank?

        <<~SEARCH_DESCRIPTION
        ## Searching
        This test sequence will first perform each required search associated
        with this resource. This sequence will perform searches with the
        following parameters:

        #{search_param_name_string}

        ### Search Parameters
        The first search uses the selected patient(s) from the prior launch
        sequence. Any subsequent searches will look for its parameter values
        from the results of the first search. For example, the `identifier`
        search in the patient sequence is performed by looking for an existing
        `Patient.identifier` from any of the resources returned in the `_id`
        search. If a value cannot be found this way, the search is skipped.

        ### Search Validation
        Inferno will retrieve up to the first 20 bundle pages of the reply for
        #{search_validation_resource_type} and save them for subsequent tests. Each of
        these resources is then checked to see if it matches the searched
        parameters in accordance with [FHIR search
        guidelines](https://www.hl7.org/fhir/search.html). The test will fail,
        for example, if a Patient search for `gender=male` returns a `female`
        patient.
        SEARCH_DESCRIPTION
      end

      def description
        <<~DESCRIPTION
        # Background

        The US Core #{title} sequence verifies that the system under test is
        able to provide correct responses for #{resource_type} queries. These queries
        must contain resources conforming to the #{profile_name} as
        specified in the US Core #{group_metadata.version} Implementation Guide.

        # Testing Methodology
        #{search_description}

        ## Must Support
        Each profile contains elements marked as "must support". This test
        sequence expects to see each of these elements at least once. If at
        least one cannot be found, the test will fail. The test will look
        through the #{resource_type} resources found in the first test for these
        elements.

        ## Profile Validation
        Each resource returned from the first search is expected to conform to
        the [#{profile_name}](#{profile_url}). Each element is checked against
        teminology binding and cardinality requirements.

        Elements with a required binding are validated against their bound
        ValueSet. If the code/system in the element is not part of the ValueSet,
        then the test will fail.

        ## Reference Validation
        At least one instance of each external reference in elements marked as
        "must support" within the resources provided by the system must resolve.
        The test will attempt to read each reference found and will fail if no
        read succeeds.
        DESCRIPTION
      end
    end
  end
end
