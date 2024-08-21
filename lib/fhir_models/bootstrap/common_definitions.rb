require 'tempfile'
require_relative '../generator/ig_loader'

module FHIR
  module CommonDefinitions
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      extend FHIR::Deprecate

      def load_igs(ig_file_name)
        ig_loader = FHIR::Generator::IGLoader.new(ig_file_name)
        @ig_resources = ig_loader.load
      end

      def resource_definition(resource_name)
        return @ig_resources.resource_definitions.find do |rd|
          rd['id'] == resource_name || rd['name'] == resource_name || rd['url'] == resource_name
        end
      end
      deprecate :get_resource_definition, :resource_definition
    end
  end
end