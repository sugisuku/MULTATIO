class CreateTrains < ActiveRecord::Migration
  def change
    create_table :trains do |t|
      t.string :title
      t.string :memo
      t.date :take_date
      t.integer :user_id

      t.timestamps
    end
  end
end
