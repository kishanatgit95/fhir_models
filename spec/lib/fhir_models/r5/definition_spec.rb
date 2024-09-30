require_relative '../../../../lib/fhir_models/r5/bootstrap/definitions'
require_relative '../../../../lib/fhir_models/r5'
RSpec.describe FHIR::R5::Definitions do
  describe '#resource_definition' do
    it 'returns R5 resource definition' do
      result = FHIR::R5::Definitions.resource_definition('Patient')
      expect(result.id).to eq('Patient')
      expect(result.version).to eq('5.0.0')
    end
  end
end