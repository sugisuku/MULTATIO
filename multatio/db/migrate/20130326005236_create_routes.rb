class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :name
      t.integer :order
      t.integer :price
      t.integer :user_id
      t.references :train, index: true

      t.timestamps
    end
  end
end
