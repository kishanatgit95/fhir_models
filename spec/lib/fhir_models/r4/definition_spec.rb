require_relative '../../../../lib/fhir_models/r4/bootstrap/definitions'

RSpec.describe FHIR::Definitions do
  let (:fhir_version) {'4.0.1'}

  describe 'FHIR Type Definitions' do
    it 'returns R4 primitive type definition' do
      name = 'string'

      result = FHIR::Definitions.type_definition(name)
      expect(result['id']).to eq(name)
      expect(result['version']).to eq(fhir_version)
    end

    it 'returns R4 complex type definition' do
      name = 'Address'

      result = FHIR::Definitions.type_definition(name)
      expect(result['id']).to eq(name)
      expect(result['version']).to eq(fhir_version)
    end
  end

  describe 'FHIR Resource Definitions' do
    it 'returns R4 resource definition' do
      name = 'Patient'

      result = FHIR::Definitions.resource_definition(name)
      expect(result['id']).to eq(name)
      expect(result['version']).to eq(fhir_version)
    end
  end

  describe 'FHIR Extension Definitions' do
    it 'returns R4 extension definition' do
      name = 'valueset-expression'

      result = FHIR::Definitions.extension_definition(name)
      expect(result['id']).to eq(name)
      expect(result['version']).to eq(fhir_version)
    end
  end

  describe 'FHIR Profiles' do
    it 'returns R4 profile by url' do
      url = 'http://hl7.org/fhir/StructureDefinition/vitalsigns'

      result = FHIR::Definitions.profile(url)
      expect(result['url']).to eq(url)
      expect(result['version']).to eq(fhir_version)
    end

    it 'returns R4 profiles by resource type' do
      name = 'Observation'

      results = FHIR::Definitions.profiles_for_resource(name)
      expect(results.all? {|p| p['type'] == name && p['fhirVersion'] == fhir_version}).to be_truthy
    end
  end

  describe 'FHIR Value Sets' do
    let(:code) { '306005' }
    let(:url) { 'http://snomed.info/sct' }

    it 'returns nil without valid parameters' do
      expect(FHIR::Definitions.get_display(nil, nil)).to eq nil
      expect(FHIR::Definitions.get_display(nil, code)).to eq nil
      expect(FHIR::Definitions.get_display(url, nil)).to eq nil
    end

    it 'returns a matching expansion.contains value' do
      expect(FHIR::Definitions.get_display(url, code)).to eq 'US kidneys'
    end
  end
end
