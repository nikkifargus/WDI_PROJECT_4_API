class User < ApplicationRecord
  has_secure_password

  has_many :posts
  has_and_belongs_to_many :lessons

  validates :email, presence: true, uniqueness: true
end
