module FHIR
  module R5
    class Base < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []

    end
  end
end