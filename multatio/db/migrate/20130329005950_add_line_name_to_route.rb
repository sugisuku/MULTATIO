class AddLineNameToRoute < ActiveRecord::Migration
  def change
    add_column :routes, :line_name, :string
  end
end
