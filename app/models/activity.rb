class Activity < ApplicationRecord
  validates :name, presence: true
  validates :category, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :description, presence: true
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
end
