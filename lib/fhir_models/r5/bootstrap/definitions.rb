module FHIR
  module R5
    class Definitions
      include CommonDefinitions
      @ig_file_name = File.join(Dir.pwd, 'lib', 'fhir_models', 'igs', 'hl7.fhir.r5.core.tgz')

      load_igs(@ig_file_name)

      def self.fhir_version_string
        'R5'
      end

      def self.versioned_fhir_module
        FHIR::R5
      end
    end
  end
end
