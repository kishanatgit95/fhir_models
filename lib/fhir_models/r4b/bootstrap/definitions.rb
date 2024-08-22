module FHIR
  module R4B
    class Definitions
      include CommonDefinitions
      @ig_file_name = File.join(Dir.pwd, 'lib', 'fhir_models', 'igs', 'hl7.fhir.r4b.core.tgz')

      load_igs(@ig_file_name)

      def self.module_version_name
        'R4B'
      end

      def self.module_version
        FHIR::R4B
      end
    end
  end
end
