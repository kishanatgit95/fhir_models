module FHIR
  module R4
    class StructureDefinition
      include FHIR::CommonStructureDefinition

      def self.fhir_version_string
        'R4'
      end

      def self.versioned_fhir_module
        FHIR::R4
      end
    end
  end

  StructureDefinition = FHIR::R4::StructureDefinition
end