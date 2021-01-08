class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :genre, :rating, :year, :img
  has_many :book_copies

end

