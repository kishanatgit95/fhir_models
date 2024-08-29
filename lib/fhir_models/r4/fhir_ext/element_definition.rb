module FHIR
  module R4
    class ElementDefinition < FHIR::Model
      include FHIR::CommonElementDefinition

      # children is used to hierarchically arrange elements
      # so profile validation is easier to compute
      attr_accessor :children
      attr_accessor :local_name
      attr_accessor :marked_for_keeping

      def self.module_version_name
        'R4'
      end

      def self.module_version
        FHIR::R4
      end
    end
  end

  ElementDefinition = FHIR::R4::ElementDefinition
end
