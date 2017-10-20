class Character < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :house, presence: true
end
