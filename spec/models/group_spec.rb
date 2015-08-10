require 'rails_helper'

RSpec.describe Group, type: :model do
  describe 'Validations' do
    subject(:group) { Group.new }

    specify 'require a name' do
      group.name = nil

      group.valid?

      expect(group.errors[:name]).to include(/can't be blank/)
    end

    specify 'require a city' do
      group.city = nil

      group.valid?

      expect(group.errors[:city]).to include(/can't be blank/)
    end

    specify 'require a state' do
      group.state = nil

      group.valid?

      expect(group.errors[:state]).to include(/can't be blank/)
    end
  end
end
