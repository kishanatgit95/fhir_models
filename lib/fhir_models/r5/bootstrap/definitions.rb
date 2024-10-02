module FHIR
  module R5
    class Definitions
      include CommonDefinitions
      extend FHIR::R5
      @ig_file_name = File.join(__dir__, '..', '..', 'igs', 'hl7.fhir.r5.core.tgz')

      load_igs(@ig_file_name)
    end
  end
end
