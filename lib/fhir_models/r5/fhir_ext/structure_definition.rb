module FHIR
  module R5
    class StructureDefinition
      include CommonStructureDefinition

      def self.fhir_version_string
        'R5'
      end

      def self.versioned_fhir_module
        FHIR::R5
      end
    end
  end
end