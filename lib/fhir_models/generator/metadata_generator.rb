module FHIR
  class Generator
    class MetadataGenerator
      attr_accessor :ig_resources, :output_folder

      def initialize(ig_resources, output_folder)
        self.ig_resources = ig_resources
        self.output_folder = output_folder
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

        output_file_name = File.join(output_folder, 'metadata.rb')

        file = File.open(output_file_name, 'w:UTF-8')
        file.write(template.to_s)
        file.close

      end
    end
  end
end
