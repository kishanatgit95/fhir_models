module FHIR
  module R5
    class StructureDefinitionCompare
      include CommonStructureDefinitionCompare

      def self.fhir_version_string
        'R5'
      end

      def self.versioned_fhir_module
        FHIR::R5
      end
    end
  end
end