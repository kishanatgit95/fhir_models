module FHIR
  module R5
    module Json
      extend FHIR::R5
      extend FHIR::ClassJson
      include FHIR::InstanceJson
    end
  end
end
