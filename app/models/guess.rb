class Guess < ApplicationRecord
  belongs_to :suspect
  belongs_to :weapon
  belongs_to :location
end
