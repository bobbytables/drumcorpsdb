class Division < ActiveRecord::Base
  validates :name, uniqueness: true
end
