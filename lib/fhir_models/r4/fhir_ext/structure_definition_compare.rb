module FHIR
  module R4
    class StructureDefinitionCompare
      include FHIR::CommonStructureDefinitionCompare

      def self.module_version_name
        'R4'
      end

      def self.module_version
        FHIR::R4
      end
    end
  end

  StructureDefinitionCompare = FHIR::R4::StructureDefinitionCompare
end