class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :genre, :rating, :year
  has_many :book_copies

end

