class Weapon < ApplicationRecord
  has_many :guesses, dependent: :destroy
end
