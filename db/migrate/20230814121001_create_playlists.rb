class CreatePlaylists < ActiveRecord::Migration[7.0]
  def change
    create_table :playlists do |t|
      t.string :name, null: false
      t.references :user, null: false
      t.string :memo
      t.timestamps
    end
  end
end
