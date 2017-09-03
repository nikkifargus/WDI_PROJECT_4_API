class LessonSerializer < ActiveModel::Serializer
  attributes :id, :time, :date
  has_one :genre
  has_one :teacher
  has_one :location

  has_many :posts

  has_many :users

end
