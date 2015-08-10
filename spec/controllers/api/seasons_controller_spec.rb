require 'rails_helper'

RSpec.describe Api::SeasonsController, type: :controller do
  describe 'GET index' do
    it 'returns seasons as JSON in the body' do
      seasons = FactoryGirl.create_list(:season, 3)

      get :index
      parsed = JSON.load(response.body)

      expect(parsed['seasons']).to be_present
      expect(parsed['seasons'].length).to be(3)

      expect(parsed['seasons'][0]['id']).to eq(seasons[0].id)
      expect(parsed['seasons'][0]['year']).to eq(seasons[0].year)

      expect(parsed['seasons'][1]['id']).to eq(seasons[1].id)
      expect(parsed['seasons'][1]['year']).to eq(seasons[1].year)

      expect(parsed['seasons'][2]['id']).to eq(seasons[2].id)
      expect(parsed['seasons'][2]['year']).to eq(seasons[2].year)
    end
  end
end
