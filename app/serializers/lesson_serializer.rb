class LessonSerializer < ActiveModel::Serializer
  attributes :id, :time, :date, :user_ids, :location, :genre
  has_one :genre
  has_one :teacher
  has_one :location

  has_many :posts

  has_many :users

end
