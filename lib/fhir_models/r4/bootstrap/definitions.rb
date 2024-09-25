module FHIR
  module R4
    class Definitions
      include CommonDefinitions
      extend FHIR::R4
      @ig_file_name = File.join(Dir.pwd, 'lib', 'fhir_models', 'igs', 'hl7.fhir.r4.core.tgz')

      load_igs(@ig_file_name)
    end
  end

  Definitions = FHIR::R4::Definitions
end
