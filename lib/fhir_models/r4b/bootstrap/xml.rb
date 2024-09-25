module FHIR
  module R4B
    module Xml
      extend FHIR::R4B
      extend FHIR::ClassXml
      include FHIR::InstanceXml
    end
  end
end
