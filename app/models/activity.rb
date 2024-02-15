class Activity < ApplicationRecord
  has_many :bookings, dependent: :destroy
end
