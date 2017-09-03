class GenreSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image

  has_many :lessons
  has_many :teachers
  has_many :locations
end
