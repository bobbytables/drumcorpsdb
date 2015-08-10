require 'rails_helper'

RSpec.describe Division, type: :model do
  describe 'Validations' do
    it 'fails on duplicate names' do
      division = FactoryGirl.create(:division)
      new_division = division.dup

      new_division.valid?

      expect(new_division.errors[:name]).to include(/has already been taken/)
    end
  end
end
