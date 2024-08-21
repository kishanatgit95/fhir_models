# module A
#   def self.included(base)
#     base.extend ClassMethods
#   end

#   module ClassMethods
#     @new_version = @version + 'B'
#     def foo
#       @new_version
#     end
#   end
# end

# class B
#   include A
#   @version = 'R4'
# end

module FHIR
  class Definitions
    include CommonDefinitions
    @ig_file_name = File.join(Dir.pwd, 'lib', 'fhir_models', 'igs', 'hl7.fhir.r4.core.tgz')

    load_igs(@ig_file_name)
  end
end