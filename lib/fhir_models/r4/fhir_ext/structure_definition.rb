module FHIR
  module R4
    class StructureDefinition
      include CommonStructureDefinition

      attr_accessor :finding
      attr_accessor :errors
      attr_accessor :warnings
      attr_accessor :hierarchy

      def self.module_version_name
        'R4'
      end

      def self.module_version
        FHIR::R4
      end
    end
  end

  StructureDefinition = FHIR::R4::StructureDefinition
end