class AddColumnAddData < ActiveRecord::Migration[7.0]
  def change
    add_column :tunes, :add_date, :datetime, null: false
    add_column :notes, :add_date, :datetaime, null: false
    add_column :playlists, :add_date, :datetime, null: false
    add_column :users, :create_date, :datetime, null: false
    add_column :users, :update_date, :datetime
  end
end
