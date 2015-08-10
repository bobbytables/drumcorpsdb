class Season < ActiveRecord::Base
  validates :year, numericality: { only_integer: true, less_than_or_equal_to: 9999, greater_than_or_equal_to: 1000 }
end
