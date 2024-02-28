class Stuff < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true
  validates :price, presence: true
  validates :category, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
