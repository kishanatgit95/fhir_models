module FHIR
  module R4B
    class Definitions
      include CommonDefinitions
      extend FHIR::R4B
      @ig_file_name = File.join(__dir__, '..', '..', 'igs', 'hl7.fhir.r4b.core.tgz')

      load_igs(@ig_file_name)
    end
  end
end
