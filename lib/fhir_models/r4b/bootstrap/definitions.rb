module FHIR
  module R4B
    class Definitions
      include CommonDefinitions
      @ig_file_name = File.join(Dir.pwd, 'lib', 'fhir_models', 'igs', 'hl7.fhir.r4b.core.tgz')

      load_igs(@ig_file_name)

      def self.fhir_version_string
        'R4B'
      end

      def self.versioned_fhir_module
        FHIR::R4B
      end
    end
  end
end
