class Booking < ApplicationRecord
  belongs_to :house
  belongs_to :renter, class_name: 'User'
  belongs_to :lender, class_name: 'User'

  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :status, inclusion: { in: %w(pending approved denied) }
  # these should work according to rail's own documentation but give an error
  # validates :start_time, date: { after: Proc.new { Date.today } }
  # validates :start_time, date: { before: :end_time }
  # validates :end_time, date: { after: :start_time }
  def pending?
    status == 'pending'
  end
end
