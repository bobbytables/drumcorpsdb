class Account < ActiveRecord::Base
  validates :owner_email, presence: true
  validates :name, presence: true
end
