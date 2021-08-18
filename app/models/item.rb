class Item < ApplicationRecord
  has_many :booked_items
  has_many :bookings, through: :booked_items

  scope :active, -> { where(archived: false) }
  scope :archived, -> { where(archived: true) }
end
