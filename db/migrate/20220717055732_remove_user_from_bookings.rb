class RemoveUserFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_reference :bookings, :user, index: true
  end
end
