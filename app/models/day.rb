class Day < ApplicationRecord
  has_many :weeks
  has_many :tacticians, through: :weeks
end
