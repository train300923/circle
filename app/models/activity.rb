class Activity < ApplicationRecord
  CATEGORIES = %w(Tennis Crossfit Opera Restaurant Brunch Waltz Museum River Shopping Sightseeing Conference Aquarium Zoo Cycling Drinks Clubbing Yoga Wellness Nails Hair Concert)
  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :price, presence: true
  validates :address, presence: true
  validates :description, presence: true
  has_many :bookings, dependent: :destroy
  has_many :reviews
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_address,
    against: [ :address ],
    using: {
      tsearch: { prefix: true }
    }
end
