class Activity < ApplicationRecord
  validates :name, presence: true
  validates :category, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :description, presence: true
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
