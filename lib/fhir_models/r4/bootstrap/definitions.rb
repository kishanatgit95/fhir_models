module FHIR
  module R4
    class Definitions
      include CommonDefinitions
      extend FHIR::R4
      @ig_file_name = File.join(__dir__, '..', '..', 'igs', 'hl7.fhir.r4.core.tgz')

      load_igs(@ig_file_name)
    end
  end

  Definitions = FHIR::R4::Definitions
end
