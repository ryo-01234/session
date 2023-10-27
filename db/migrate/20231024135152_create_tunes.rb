class CreateTunes < ActiveRecord::Migration[7.0]
  def change
    create_table :tunes do |t|
      t.string :name, null: false
      t.string :alt_name
      t.string :rhythm, null: false
      t.string :memo
      t.timestamps
    end
  end
end
