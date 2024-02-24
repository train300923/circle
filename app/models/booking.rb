class Booking < ApplicationRecord

  belongs_to :user
  belongs_to :activity
  has_many :participations
  has_many :users, through: :participations
end
