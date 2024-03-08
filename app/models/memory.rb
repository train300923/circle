class Memory < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  has_many_attached :photos
end
