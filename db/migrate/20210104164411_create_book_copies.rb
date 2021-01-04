class CreateBookCopies < ActiveRecord::Migration[6.0]
  def change
    create_table :book_copies do |t|
      t.string :user_id
      t.string :book_id
      t.string :condition
      t.boolean :active
      t.date :start_date
      t.date :due_date
      t.string :borrower_id

      t.timestamps
    end
  end
end
