class AddRefToBookings < ActiveRecord::Migration[7.1]
  def change
    add_reference :bookings, :activity, null: false, foreign_key: true
  end
end
