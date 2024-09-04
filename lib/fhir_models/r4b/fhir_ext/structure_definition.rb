module FHIR
  module R4B
    class StructureDefinition
      include CommonStructureDefinition

      def self.fhir_version_string
        'R4B'
      end

      def self.versioned_fhir_module
        FHIR::R4B
      end
    end
  end
end