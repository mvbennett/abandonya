class House < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  # should ensure number values are 1-5
  validates :haunted, :inclusion => 1..5
  validates :name, presence: true, length: { maximum: 30 }
  validates :address, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_address,
    against: [ :name, :address ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
