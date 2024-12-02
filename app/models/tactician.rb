class Tactician < ApplicationRecord
  has_many :tactician_schedules
  has_many :schedules, through: :tactician_schedules
  
  has_many :tactician_badges
  has_many :badges, through: :tactician_badges
end
