module FHIR
  module R4
    class Definitions
      include CommonDefinitions
      @ig_file_name = File.join(Dir.pwd, 'lib', 'fhir_models', 'igs', 'hl7.fhir.r4.core.tgz')

      load_igs(@ig_file_name)

      def self.module_version_name
        'R4'
      end

      def self.module_version
        FHIR::R4
      end
    end
  end

  Definitions = FHIR::R4::Definitions
end
