class Suspect < ApplicationRecord
  has_many :guesses, dependent: :destroy
  has_many :weapons, through: :guesses
  has_many :locations, through: :guesses
  validates :name, presence: true, uniqueness: true
  validates :color, presence: true
  has_one_attached :photo
end
