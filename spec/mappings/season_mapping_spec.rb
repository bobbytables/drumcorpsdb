require 'rails_helper'

RSpec.describe SeasonMapping do
  describe '.representation_for' do
    it 'returns JSON for the season' do
      season = FactoryGirl.create(:season)

      json = SeasonMapping.representation_for(:read, season)
      parsed = JSON.load(json)

      expect(parsed['season']).to be_present
      expect(parsed['season']['id']).to eq(season.id)
      expect(parsed['season']['year']).to eq(season.year)
    end
  end
end
