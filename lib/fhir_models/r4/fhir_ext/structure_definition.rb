module FHIR
  module R4
    class StructureDefinition
      include FHIR::CommonStructureDefinition

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