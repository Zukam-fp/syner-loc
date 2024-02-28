class Stuff < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true
  validates :price, presence: true
  validates :category, presence: true
end
