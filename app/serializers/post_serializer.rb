class PostSerializer < ActiveModel::Serializer
  attributes :id, :body
  has_one :lesson
  has_one :teacher
  has_one :user
end
