class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image

  has_many :lessons
  has_many :posts
  has_many :locations
  has_many :genres
  
end
