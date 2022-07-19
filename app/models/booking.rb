class Booking < ApplicationRecord
  belongs_to :house
  belongs_to :renter, class_name: 'User'
  belongs_to :lender, class_name: 'User'

  def pending?
    status == 'pending'
  end
end
