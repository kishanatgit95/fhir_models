module FHIR
  module R5
    class Model < FHIR::Model
      def fhir_version_string
        'R5'
      end

      def versioned_fhir_module
        FHIR::R5
      end
    end
  end
end
