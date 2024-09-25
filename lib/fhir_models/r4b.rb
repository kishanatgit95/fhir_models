root = File.expand_path '..', File.dirname(File.absolute_path(__FILE__))

require File.join(root, 'fhir_models', 'version')
require File.join(root, 'fhir_models', 'deprecate')

# Need to require Hashable first
require File.join(root, 'fhir_models', 'bootstrap', 'hashable.rb')
require File.join(root, 'fhir_models', 'bootstrap', 'json.rb')

Dir.glob(File.join(root, 'fhir_models', 'bootstrap', '*.rb')).sort.each do |file|
  require file
end

require File.join(root, 'fhir_models', 'fhir.rb')

# Require the FHIRPath code
Dir.glob(File.join(root, 'fhir_models', 'fhirpath', '*.rb')).sort.each do |file|
  require file
end

# Require the fhir_ext code
Dir.glob(File.join(root, 'fhir_models', 'fhir_ext', '*.rb')).sort.each do |file|
  require file
end

Dir.glob(File.join(root, 'fhir_models', 'r4b', 'bootstrap', '*.rb')).sort.each do |file|
  require file
end

Dir.glob(File.join(root, 'fhir_models', 'r4b', 'generated', '*.rb')).sort.each do |file|
  require file
end

Dir.glob(File.join(root, 'fhir_models', 'r4b', 'generated', 'resources', '*.rb')).sort.each do |file|
  require file
end

Dir.glob(File.join(root, 'fhir_models', 'r4b', 'generated', 'types', '*.rb')).sort.each do |file|
  require file
end

Dir.glob(File.join(root, 'fhir_models', 'r4b', 'fhir_ext', '*.rb')).sort.each do |file|
  require file
end

module FHIR
  module R4B
    extend self

    def fhir_version_string
      'R4B'
    end

    def versioned_fhir_module
      FHIR::R4B
    end
  end
end
