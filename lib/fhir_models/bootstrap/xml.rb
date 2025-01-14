require 'nokogiri'
module FHIR
  module ClassXml
    def from_xml(xml)
      doc = Nokogiri::XML(xml)
      doc.root.add_namespace_definition('f', 'http://hl7.org/fhir')
      doc.root.add_namespace_definition('x', 'http://www.w3.org/1999/xhtml')
      hash = xml_node_to_hash(doc.root)

      resource = nil
      begin
        resource_type = doc.root.name
        klass = versioned_fhir_module.const_get(resource_type)
        resource = klass.new(hash)
      rescue StandardError => e
        FHIR.logger.error("Failed to deserialize XML:\n#{e.backtrace}")
        FHIR.logger.debug("XML:\n#{xml}")
        resource = nil
      end
      resource
    end

    def xml_node_to_hash(node)
      hash = {}
      node.children.each do |child|
        next if [Nokogiri::XML::Text, Nokogiri::XML::Comment].include?(child.class)

        key = child.name
        if node.name == 'text' && key == 'div'
          hash[key] = child.to_xml
        else
          value = child.get_attribute('value')
          if value.nil? && !child.children.empty?
            value = xml_node_to_hash(child)
          end

          if hash[key]
            hash[key] = [hash[key]] unless hash[key].is_a?(Array)
            hash[key] << value
          else
            hash[key] = value
          end
        end
      end
      hash['url'] = node.get_attribute('url') if ['extension', 'modifierExtension'].include?(node.name)
      hash['id'] = node.get_attribute('id') if node.get_attribute('id') # Testscript fixture ids (applies to any BackboneElement)
      hash['resourceType'] = node.name if versioned_fhir_module::RESOURCES.include?(node.name)

      # If this hash contains nothing but an embedded resource, we should return that
      # embedded resource without the wrapper
      if hash.keys.length == 1 &&
         versioned_fhir_module::RESOURCES.include?(hash.keys.first) &&
         hash.values.first.is_a?(Hash) &&
         hash.values.first['resourceType'] == hash.keys.first
        hash.values.first
      else
        hash
      end
    end

    def valid?(xml)
      validate(xml).empty?
    end

    def validate(xml)
      defns = File.expand_path '../definitions/schema', File.dirname(File.absolute_path(__FILE__))
      schema = File.join(defns, 'fhir-all.xsd')
      xsd = Nokogiri::XML::Schema(File.new(schema))
      xsd.validate(Nokogiri::XML(xml))
    end
  end

  module InstanceXml
    #
    #  This module includes methods to serialize or deserialize FHIR resources to and from XML.
    #

    def to_xml
      hash = to_hash
      hash.delete('resourceType')
      doc = Nokogiri::XML::Document.new
      doc.encoding = 'utf-8'
      doc.root = hash_to_xml_node(resourceType, hash, doc)
      doc.root.default_namespace = 'http://hl7.org/fhir'
      doc.to_xml
    end

    # Hash keys are ordered in Ruby 1.9 and later, so we can rely on their order
    # to be the correct order for the XML serialization.
    def hash_to_xml_node(name, hash, doc)
      node = Nokogiri::XML::Node.new(name, doc)

      # if hash contains resourceType
      # create a child node with the name==resourceType
      # fill that, and place the child under the above `node`
      if hash['resourceType'].is_a?(String) && name != 'instance'
        child_name = hash['resourceType']
        hash.delete('resourceType')
        child = hash_to_xml_node(child_name, hash, doc)
        node.add_child(child)
        return node
      end

      hash.each do |key, value|
        next if ['extension', 'modifierExtension'].include?(name) && key == 'url'
        next if key == 'id' && !versioned_fhir_module::RESOURCES.include?(name)

        case value
        when Hash
          node.add_child(hash_to_xml_node(key, value, doc))
        when Array
          value.each do |v|
            if v.is_a?(Hash)
              node.add_child(hash_to_xml_node(key, v, doc))
            else
              child = Nokogiri::XML::Node.new(key, doc)
              child.set_attribute('value', v)
              node.add_child(child)
            end
          end
        else
          child = Nokogiri::XML::Node.new(key, doc)
          if name == 'text' && key == 'div'
            child.set_attribute('xmlns', 'http://www.w3.org/1999/xhtml')
            html = value.strip
            if html.start_with?('<div') && html.end_with?('</div>')
              html = html[html.index('>') + 1..-7]
            end
            child.inner_html = html
          else
            child.set_attribute('value', value)
          end
          node.add_child(child)
        end
      end
      node.set_attribute('url', hash['url']) if ['extension', 'modifierExtension'].include?(name)
      node.set_attribute('id', hash['id']) if hash['id'] && !versioned_fhir_module::RESOURCES.include?(name)
      node
    end
  end
end
