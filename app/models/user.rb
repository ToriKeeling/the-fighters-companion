class User < ApplicationRecord
  has_many :selected_moves
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
