class Lesson < ApplicationRecord
  belongs_to :genre
  belongs_to :teacher
  belongs_to :location

  has_many :posts

  has_and_belongs_to_many :users
end
