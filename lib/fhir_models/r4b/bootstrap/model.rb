module FHIR
  module R4B
    class Model < FHIR::Model
      def fhir_version_string
        'R4B'
      end

      def versioned_fhir_module
        FHIR::R4B
      end
    end
  end
end
