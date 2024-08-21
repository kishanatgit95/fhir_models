require_relative '../../../../lib/fhir_models/r4/bootstrap/definitions'

RSpec.describe FHIR::Definitions do
  describe '#resource_definition' do
    it 'returns R4 resource definition' do
      result = FHIR::Definitions.resource_definition('Patient')
      expect(result['version']).to eq('4.0.1')
    end

  end
end
