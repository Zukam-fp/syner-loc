class Profile < ApplicationRecord

  # Associations
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings

  # Validations
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  validates :photo, presence: true
  validates :bio, presence: true
  validates :location, presence: true
  validates :price_per_day, presence: true
  validates :rating, presence: true
  validates :number_of_reviews, presence: true

  # Methods
  def average_rating
    return 0 if reviews.empty?
    reviews.average(:rating).round(2)
  end

  def number_of_reviews
    reviews.count
  end

  def self.search(search)
    if search
      where('location ILIKE ?', "%#{search}%")
    else
      all
    end
  end
end
