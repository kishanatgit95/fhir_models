root = File.expand_path '..', File.dirname(File.absolute_path(__FILE__))


require_relative 'fhir_models_core'

puts root
Dir.glob(File.join(root, 'fhir_models', 'generated', '4.3.0', '*.rb')).sort.each do |file|
  require file
end

Dir.glob(File.join(root, 'fhir_models', 'generated', '4.3.0', 'resources', '*.rb')).sort.each do |file|
  require file
end

Dir.glob(File.join(root, 'fhir_models', 'generated', '4.3.0', 'types', '*.rb')).sort.each do |file|
  require file
end