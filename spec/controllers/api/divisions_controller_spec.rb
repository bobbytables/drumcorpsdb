require 'rails_helper'

RSpec.describe Api::DivisionsController, type: :controller do
  describe 'GET index' do
    it 'returns all of the divisions' do
      divisions = FactoryGirl.create_list(:division, 2)
      get :index

      parsed = JSON.load(response.body)

      expect(parsed['divisions']).to be_present
      expect(parsed['divisions'][0]['id']).to eq(divisions[0].id)
      expect(parsed['divisions'][0]['name']).to eq(divisions[0].name)

      expect(parsed['divisions'][1]['id']).to eq(divisions[1].id)
      expect(parsed['divisions'][1]['name']).to eq(divisions[1].name)
    end
  end
end
