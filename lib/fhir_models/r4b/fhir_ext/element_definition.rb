module FHIR
  module R4B
    class ElementDefinition < FHIR::Model
      include CommonElementDefinition

      def self.fhir_version_string
        'R4B'
      end

      def self.versioned_fhir_module
        FHIR::R4B
      end
    end
  end
end
