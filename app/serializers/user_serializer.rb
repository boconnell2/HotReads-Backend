class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :img, :bio
  has_many :book_copies
  has_many :books
end
