class Book < ApplicationRecord
    has_many :book_copies
    has_many :users, through: :book_copies
end
