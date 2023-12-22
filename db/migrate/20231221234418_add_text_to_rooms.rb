class AddTextToRooms < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :text, :string
  end
end
