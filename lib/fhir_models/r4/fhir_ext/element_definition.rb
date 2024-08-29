module FHIR
  module R4
    class ElementDefinition
      include FHIR::CommonElementDefinition

      def self.module_version_name
        'R4'
      end

      def self.module_version
        FHIR::R4
      end
    end
  end

  ElementDefinition = FHIR::R4::ElementDefinition
end
