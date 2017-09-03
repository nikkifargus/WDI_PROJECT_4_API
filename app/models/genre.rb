class Genre < ApplicationRecord
  has_many :lessons

  has_many :teachers, through: :lessons
  has_many :posts, through: :lessons
  has_many :locations, through: :lessons
end
