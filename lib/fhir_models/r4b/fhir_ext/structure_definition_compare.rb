module FHIR
  module R4B
    class StructureDefinitionCompare
      include CommonStructureDefinitionCompare

      def self.module_version_name
        'R4B'
      end

      def self.module_version
        FHIR::R4B
      end
    end
  end
end