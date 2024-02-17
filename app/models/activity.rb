class Activity < ApplicationRecord
  validates :name, presence: true
  validates :category, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :description, presence: true
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_address,
    against: [ :address ],
    using: {
      tsearch: { prefix: true } 
    }
end
