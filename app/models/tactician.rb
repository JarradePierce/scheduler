class Tactician < ApplicationRecord
  has_many :schedules
  has_many :days, through: :schedules
end
