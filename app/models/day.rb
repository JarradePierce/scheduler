class Day < ApplicationRecord
  belongs_to :week
  has_many :schedules
end
