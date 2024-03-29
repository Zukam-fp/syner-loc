class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :stuffs, dependent: :destroy
  has_many :owner_bookings, through: :stuffs, source: :bookings
  has_many :bookings
end
