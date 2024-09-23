require_relative '../test_helper'

class VersionTest < Test::Unit::TestCase
  json_file = File.read('lib/fhir_models/examples/json/allergyintolerance-nka.json')
  xml_file = File.read('lib/fhir_models/examples/xml/allergyintolerance-nka.xml')
  def test_json_version
    assert_equal FHIR::Json.from_json(json_file).versioned_fhir_module, FHIR::R4
    assert_equal FHIR::R4::Json.from_json(json_file), FHIR::R4
    assert_equal FHIR::R4B::Json.from_json(json_file), FHIR::R4B
  end

  def test_xml_version
    assert_equal FHIR::Xml.from_xml(xml_file).versioned_fhir_module, FHIR::R4
    assert_equal FHIR::R4::Xml.from_xml(xml_file), FHIR::R4
    assert_equal FHIR::R4B::Xml.from_xml(xml_file), FHIR::R4B
  end
end