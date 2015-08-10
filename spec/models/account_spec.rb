require 'rails_helper'

RSpec.describe Account, type: :model do
  describe 'Validations' do
    specify 'require an owner email' do
      account = Account.new

      account.valid?

      expect(account.errors[:owner_email]).to include(/can't be blank/)
    end

    specify 'require a name' do
      account = Account.new

      account.valid?

      expect(account.errors[:name]).to include(/can't be blank/)
    end
  end
end
