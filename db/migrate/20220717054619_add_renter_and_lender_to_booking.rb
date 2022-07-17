class AddRenterAndLenderToBooking < ActiveRecord::Migration[6.1]
  def change
    change_table :bookings do |t|
      t.references :renter, foreign_key: { to_table: :users }
      t.references :lender, foreign_key: { to_table: :users }
    end
  end
end
