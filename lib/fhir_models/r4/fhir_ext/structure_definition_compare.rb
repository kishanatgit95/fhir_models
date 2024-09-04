module FHIR
  module R4
    class StructureDefinitionCompare
      include FHIR::CommonStructureDefinitionCompare

      def self.fhir_version_string
        'R4'
      end

      def self.versioned_fhir_module
        FHIR::R4
      end
    end
  end

  StructureDefinitionCompare = FHIR::R4::StructureDefinitionCompare
end