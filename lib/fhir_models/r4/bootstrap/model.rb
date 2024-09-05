module FHIR
  module R4
    class Model < FHIR::Model
      def fhir_version_string
        'R4'
      end

      def versioned_fhir_module
        FHIR::R4
      end
    end
  end
end
