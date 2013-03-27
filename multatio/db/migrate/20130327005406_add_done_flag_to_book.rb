class AddDoneFlagToBook < ActiveRecord::Migration
  def change
    add_column :books, :done_flag, :boolean
  end
end
