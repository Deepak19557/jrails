class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :book_name
      t.string :author
      t.integer :available_book
      t.timestamps
    end
  end
end
