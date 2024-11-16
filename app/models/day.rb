class Day < ApplicationRecord
  belongs_to :week
  has_many :schedules
  has_many :tacticians, through: :schedules
end
