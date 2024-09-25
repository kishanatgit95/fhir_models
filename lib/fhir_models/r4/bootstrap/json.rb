module FHIR
  module R4
    module Json
      extend FHIR::R4
      extend FHIR::ClassJson
      include FHIR::InstanceJson
    end
  end

  module Json
    extend FHIR::R4
    extend FHIR::ClassJson
    include FHIR::InstanceJson
  end
end
