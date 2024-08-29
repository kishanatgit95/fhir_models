module FHIR
  module R4B
    class StructureDefinition
      include CommonStructureDefinition
      class << self; attr_accessor :vs_validators end
      @vs_validators = {}

      def self.validates_vs(valueset_uri, &validator_fn)
        @vs_validators[valueset_uri] = validator_fn
      end

      def self.clear_validates_vs(valueset_uri)
        @vs_validators.delete valueset_uri
      end

      def self.clear_all_validates_vs
        @vs_validators = {}
      end

      attr_accessor :finding
      attr_accessor :errors
      attr_accessor :warnings
      attr_accessor :hierarchy

      def self.module_version_name
        'R4B'
      end

      def self.module_version
        FHIR::R4B
      end
    end
  end
end