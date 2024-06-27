# require 'active_support/all'
# require 'fhir_models'
# require 'pathname'
require 'rubygems/package'
require 'zlib'
require_relative 'ig_resources'
require_relative 'ig_metadata'

module FHIR
  class Generator
    class IGLoader
      attr_accessor :ig_file_name, :ig_metadata

      def initialize(ig_file_name)
        self.ig_file_name = ig_file_name
      end

      def ig_resources
        @ig_resources ||= IGResources.new
      end

      def load
        load_ig
        load_standalone_resources
      end

      def load_ig
        tar = Gem::Package::TarReader.new(
          Zlib::GzipReader.open(ig_file_name)
        )

        tar.each do |entry|
          next if entry.directory?

          file_name = entry.full_name.split('/').last
          next unless file_name.end_with? '.json'

          begin
            if file_name == 'package.json'
              resource = JSON.parse(entry.read)
              @ig_metadata = IGMetadata.new(resource)
              puts "Extract FHIR Package version #{ig_metadata.version}"
              next
            end

            next unless file_name.start_with?('CodeSystem', 'SearchParameter', 'StructureDefinition', 'ValueSet')

            resource = JSON.parse(entry.read)
            next if resource.empty?
          rescue StandardError
            puts "Cannot read and parse JOSN file #{file_name}."
            next
          end

          ig_resources.add(resource)
        end

        puts "Extracted Primitve Types: #{ig_resources.primitive_types&.count}"
        puts "Extracted Complex Types: #{ig_resources.complex_types&.count}"
        puts "Extracted Resource Definitions: #{ig_resources.resource_definitions&.count}"
        puts "Extracted Value Sets: #{ig_resources.get_value_sets&.count}"
        puts "Extracted Code Systems: #{ig_resources.get_code_systems&.count}"
        puts "Extracted Search Parameters: #{ig_resources.get_search_parameters&.count}"
        ig_resources
      end

      def load_standalone_resources
        ig_directory = ig_file_name.chomp('.tgz')

        return ig_resources unless File.exist? ig_directory

        Dir.glob(File.join(ig_directory, '*.json')).each do |file_path|
          begin
            resource = JSON.parse(File.read(file_path))
            next if resource.empty?
          rescue StandardError
            file_name = file_path.split('/').last
            puts "Cannot read and parse JSON file #{file_name}."
            next
          end

          ig_resources.add(resource, break_bundle: true)
        end

        ig_resources
      end
    end
  end
end
