class BookCopySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :book_id, :condition, :active, :start_date, :due_date, :borrower_id
end
