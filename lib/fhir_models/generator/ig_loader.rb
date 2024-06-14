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
        #load_standalone_resources
      end

      def load_ig
        tar = Gem::Package::TarReader.new(
          Zlib::GzipReader.open(ig_file_name)
        )

        tar.each do |entry|
          next if entry.directory?

          file_name = entry.full_name.split('/').last

          if file_name == 'package.json'
            @ig_metadata = IGMetadata.new(JSON.parse(entry.read))
            puts "Extract FHIR Package version #{ig_metadata.version}"
            next
          end

          #next if file_name.end_with? 'openapi.json'

          next unless file_name.start_with? 'StructureDefinition'
          next unless file_name.end_with? '.json'

          #next unless entry.full_name.start_with? 'package/'


          resource = JSON.parse(entry.read)
          next if resource.empty?
          ig_resources.add(resource)
        end

        #binding.pry
        puts "Extracted Primitve Types: #{ig_resources.primitive_types&.count}"
        puts "Extracted Complex Types: #{ig_resources.complex_types&.count}"
        puts "Extracted Resource Definitions: #{ig_resources.resource_definitions&.count}"
        ig_resources
      end

      def load_standalone_resources
        ig_directory = ig_file_name.chomp('.tgz')

        return ig_resources unless File.exist? ig_directory

        Dir.glob(File.join(ig_directory, '*.json')).each do |file_path|
          begin
            resource = FHIR.from_contents(File.read(file_path))
            next if resource.nil?
          rescue StandardError
            file_name = file_path.split('/').last
            puts "#{file_name} does not appear to be a FHIR resource."
            next
          end

          ig_resources.add(resource)
        end

        ig_resources
      end
    end
  end
end
