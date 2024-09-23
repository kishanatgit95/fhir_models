module FHIR
  module R4B
    module Json
      extend FHIR::R4B
      extend FHIR::ClassJson
      include FHIR::InstanceJson
    end
  end
end
