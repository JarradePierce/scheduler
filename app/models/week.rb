class Week < ApplicationRecord
  has_many :days

  validates :name, uniqueness: true
end
