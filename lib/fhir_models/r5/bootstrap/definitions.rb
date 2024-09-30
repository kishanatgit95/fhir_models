module FHIR
  module R5
    class Definitions
      include CommonDefinitions
      extend FHIR::R5
      @ig_file_name = File.join(Dir.pwd, 'lib', 'fhir_models', 'igs', 'hl7.fhir.r5.core.tgz')

      load_igs(@ig_file_name)
    end
  end
end
