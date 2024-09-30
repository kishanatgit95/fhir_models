module FHIR
  module R5
    module Xml
      extend FHIR::R5
      extend FHIR::ClassXml
      include FHIR::InstanceXml
    end
  end
end
