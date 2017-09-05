class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :description, :image, :admin, :email, :lesson_ids 

  has_many :posts

  has_many :lessons
end
