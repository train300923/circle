class Booking < ApplicationRecord
  validates :start_date, presence: true
  validates :end_date, presence: true
  belongs_to :user
  belongs_to :activity
  has_many :participations
  has_many :users, through: :participations
end
