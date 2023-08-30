class DeleteColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :tunes, :add_date
    remove_column :notes, :add_date
    remove_column :users, :create_date
    remove_column :users, :update_date
    remove_column :playlists, :add_date
  end
end
