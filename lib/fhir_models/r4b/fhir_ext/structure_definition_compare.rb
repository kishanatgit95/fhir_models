module FHIR
  module R4B
    class StructureDefinitionCompare
      include CommonStructureDefinitionCompare

      def self.fhir_version_string
        'R4B'
      end

      def self.versioned_fhir_module
        FHIR::R4B
      end
    end
  end
end