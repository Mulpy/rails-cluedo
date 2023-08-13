class Suspect < ApplicationRecord
  has_many :guesses, dependent: :destroy
  has_many :weapons, through: :guesses
  has_many :locations, through: :guesses
  validates :name, presence: true, uniqueness: true
  validates :color, presence: true, inclusion: { in: %w[red yellow purple white black green blue] }
  has_one_attached :photo

  def to_label
    name.split.map(&:capitalize).join(' ')
  end
end
