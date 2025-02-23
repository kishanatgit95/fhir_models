require 'json'

module FHIR
  module ClassJson
    #
    #  This module includes methods to serialize or deserialize FHIR resources to and from JSON.
    #

    def from_json(json)
      hash = JSON.parse(json)
      resource = nil
      begin
        resource_type = hash['resourceType']
        klass = versioned_fhir_module.const_get(resource_type)
        resource = klass.new(hash)
      rescue StandardError => e
        FHIR.logger.error("Failed to deserialize JSON:\n#{e.backtrace}")
        FHIR.logger.debug("JSON:\n#{json}")
        resource = nil
      end
      resource
    end
  end

  module InstanceJson
    def to_json(opts = nil)
      JSON.pretty_generate(to_hash, opts)
    end
  end
end