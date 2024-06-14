module FHIR
  class Generator
    class IGMetadata
      ATTRIBUTES = [
        :name,
        :version,
        :fhirVersions,
        :url
      ].freeze

      ATTRIBUTES.each { |name| attr_accessor name }

      def initialize(hash)
        hash.each do |key, value|
          next unless ATTRIBUTES.include?(key.to_sym)
          instance_variable_set(:"@#{key}", value)
        end
      end
    end
  end
end
