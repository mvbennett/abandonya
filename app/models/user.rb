class User < ApplicationRecord
  has_many :bookings
  has_many :houses
  has_many :bookings_as_lender, through: :houses, source: :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
