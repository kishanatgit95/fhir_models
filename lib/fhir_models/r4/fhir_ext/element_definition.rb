module FHIR
  module R4
    class ElementDefinition < Model
      include FHIR::CommonElementDefinition

      def self.fhir_version_string
        'R4'
      end

      def self.versioned_fhir_module
        FHIR::R4
      end
    end
  end

  ElementDefinition = FHIR::R4::ElementDefinition
end
