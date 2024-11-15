class Tactician < ApplicationRecord
  has_many :weeks
  has_many :days, through: :weeks
end
