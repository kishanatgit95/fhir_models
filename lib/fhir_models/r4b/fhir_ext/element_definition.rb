module FHIR
  module R4B
    class ElementDefinition < FHIR::Model
      include CommonElementDefinition

      # children is used to hierarchically arrange elements
      # so profile validation is easier to compute
      attr_accessor :children
      attr_accessor :local_name
      attr_accessor :marked_for_keeping

      def self.module_version_name
        'R4B'
      end

      def self.module_version
        FHIR::R4B
      end
    end
  end
end
