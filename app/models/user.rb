class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  # before_action authenticate: current_user
  has_many :opportunities
end
