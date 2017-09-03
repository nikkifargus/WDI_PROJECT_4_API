class Post < ApplicationRecord
  belongs_to :lesson
  belongs_to :teacher
  belongs_to :user
end
