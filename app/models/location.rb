class Location < ApplicationRecord
  has_many :guesses, dependent: :destroy
  has_many :weapons, through: :guesses
  has_many :suspects, through: :guesses
  validates :room, presence: true, uniqueness: true
  has_one_attached :photo
end
