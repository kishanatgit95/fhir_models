require_relative '../../../../lib/fhir_models/r4b/bootstrap/definitions'

RSpec.describe FHIR::R4B::Definitions do
  describe '#resource_definition' do
    it 'returns R4B resource definition' do
      result = FHIR::R4B::Definitions.resource_definition('Patient')
      expect(result['id']).to eq('Patient')
      expect(result['version']).to eq('4.3.0')
    end
  end
end
