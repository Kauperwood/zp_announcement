class Announce < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :price, allow_nil: false, numericality: { greater_than_or_equal_to: 0 }
end

