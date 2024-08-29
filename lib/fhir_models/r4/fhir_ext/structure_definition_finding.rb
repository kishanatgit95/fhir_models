module FHIR
  module R4
    class StructureDefinitionFinding
      include FHIR::CommonStructureDefinitionFinding

      def self.module_version_name
        'R4'
      end

      def self.module_version
        FHIR::R4
      end
    end
  end

  StructureDefinitionFinding = FHIR::R4::StructureDefinitionFinding
end