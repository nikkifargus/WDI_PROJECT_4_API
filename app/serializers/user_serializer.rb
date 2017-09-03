class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :description, :image, :admin, :email, :password_digest

  has_many :posts

end
