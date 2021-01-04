class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :genre, :rating, :year
end
