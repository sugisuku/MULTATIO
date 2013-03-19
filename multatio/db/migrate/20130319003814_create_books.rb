class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :reason
      t.integer :price
      t.string :url
      t.integer :severity
      t.integer :howto
      t.date :buydate
      t.string :country

      t.timestamps
    end
  end
end
