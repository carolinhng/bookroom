class AddColumnsToRooms < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :wifi, :string
    add_column :rooms, :bathroom, :string
    add_column :rooms, :tv, :string
    add_column :rooms, :bed, :string
    add_column :rooms, :towel, :string
    add_column :rooms, :service, :string
  end
end
