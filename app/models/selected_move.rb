class SelectedMove < ApplicationRecord
  belongs_to :user
  belongs_to :move
end
