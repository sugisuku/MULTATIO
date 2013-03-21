class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :provider, :null => false
      t.string :uid, :null => false
      t.string :name, :null => false
      t.string :screen_name, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end