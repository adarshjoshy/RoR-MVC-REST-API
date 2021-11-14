class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :B_title, :limit => 128, :null => false
      t.string :Author, :limit => 128, :null => false
      t.string :Publisher, :limit => 128, :null => false
      t.integer :Year, :null => false

      t.timestamps
    end
  end
end
