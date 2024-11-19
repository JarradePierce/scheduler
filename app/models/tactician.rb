class Tactician < ApplicationRecord
  has_many :schedules
  has_many :tactician_badges
  has_many :days, through: :schedules
  has_many :badges, through: :tactician_badges
end
