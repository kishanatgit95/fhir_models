module FHIR
  module R4
    module Xml
      extend FHIR::R4
      extend FHIR::ClassXml
      include FHIR::InstanceXml
    end
  end

  module Xml
    extend FHIR::R4
    extend FHIR::ClassXml
    include FHIR::InstanceXml
  end
end
