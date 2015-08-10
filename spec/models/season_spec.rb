require 'rails_helper'

RSpec.describe Season, type: :model do
  describe 'Validations' do
    it 'fails on a bad date' do
      season = Season.new(year: 99)

      season.valid?

      expect(season.errors[:year]).to include(/must be greater than or equal to 1000/)
    end
  end
end
