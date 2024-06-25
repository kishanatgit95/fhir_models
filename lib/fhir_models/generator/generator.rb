
# require 'fhir_models'
# require 'inferno/ext/fhir_models'

require_relative 'ig_loader'
require_relative 'template'
require_relative 'metadata_generator'
require_relative 'class_generator'
# require_relative 'generator/ig_metadata_extractor'
# require_relative 'generator/granular_scope_group_generator'
# require_relative 'generator/granular_scope_resource_type_group_generator'
# require_relative 'generator/granular_scope_test_generator'
# require_relative 'generator/granular_scope_read_test_generator'
# require_relative 'generator/group_generator'
# require_relative 'generator/must_support_test_generator'
# require_relative 'generator/provenance_revinclude_search_test_generator'
# require_relative 'generator/read_test_generator'
# require_relative 'generator/reference_resolution_test_generator'
# require_relative 'generator/search_test_generator'
# require_relative 'generator/suite_generator'
# require_relative 'generator/validation_test_generator'

module FHIR
  class Generator
    def self.generate
      ig_packages = Dir.glob(File.join(Dir.pwd, 'lib', 'fhir_models', 'igs', '*.tgz'))

      ig_packages.each do |ig_package|
        new(ig_package).generate
      end
    end

    attr_accessor :ig_resources, :ig_metadata, :ig_file_name

    def initialize(ig_file_name)
      self.ig_file_name = ig_file_name
    end

    def generate
      puts "Generating tests for IG #{File.basename(ig_file_name)}"
      load_ig_package
      generate_metadata
      generate_types
    end

    def base_output_folder
      File.join(__dir__, '../generated', ig_metadata.version)
    end

    def load_ig_package
      FHIR.logger = Logger.new('/dev/null')
      ig_loader = IGLoader.new(ig_file_name)
      @ig_resources = ig_loader.load
      @ig_metadata = ig_loader.ig_metadata
      FileUtils.mkdir_p(base_output_folder)
    end

    def generate_metadata
      MetadataGenerator.new(ig_resources, base_output_folder).generate
    end

    def generate_types
      output_folder = File.join(base_output_folder, 'types')
      FileUtils.mkdir_p(output_folder)

      complex_types = ig_resources.complex_types
      ClassGenerator.new(complex_types, ig_resources, output_folder).generate
    end
  end
end
