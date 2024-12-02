class Schedule < ApplicationRecord
  belongs_to :day
  has_many :tactician_schedules
  has_many :tacticians, through: :tactician_schedules
end
