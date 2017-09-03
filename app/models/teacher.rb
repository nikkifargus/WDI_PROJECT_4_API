class Teacher < ApplicationRecord
  has_many :lessons
  has_many :posts

  has_many :genres, through: :lessons
  has_many :locations, through: :lessons
end
