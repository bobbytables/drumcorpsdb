require 'rails_helper'

RSpec.describe DivisionMapping do
  describe '.representation_for' do
    it 'represents a division as JSON' do
      division = instance_double('Division', id: 123, name: 'World Class')

      json = DivisionMapping.representation_for(:read, division)
      parsed = JSON.load(json)

      expect(parsed['division']).to be_present
      expect(parsed['division']['id']).to eq(division.id)
      expect(parsed['division']['name']).to eq(division.name)
    end
  end
end
