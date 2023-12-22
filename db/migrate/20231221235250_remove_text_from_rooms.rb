class RemoveTextFromRooms < ActiveRecord::Migration[7.0]
  def change
    remove_column :rooms, :text, :string
  end
end
