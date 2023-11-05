class Move < ApplicationRecord
  belongs_to :weapon
  has_many :selected_required_moves
end
