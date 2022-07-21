class Booking < ApplicationRecord
  belongs_to :house
  belongs_to :renter, class_name: 'User'
  belongs_to :lender, class_name: 'User'

  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :status, inclusion: { in: %w(pending approved denied) }
  # these should work according to rail's own documentation but give an error
  validate :after_today?, :start_before_end?

  def pending?
    status == 'pending'
  end

  def after_today?
    if start_time < Date.today
      errors.add(:start_time, "can't be in the past")
    end
  end

  def start_before_end?
    if end_time < start_time
      errors.add(:end_time, "can't be before start")
    end
  end
end
