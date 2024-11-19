class Badge < ApplicationRecord
  has_many :tactician_badges
  has_many :tacticians, through: :tactician_badges
end
