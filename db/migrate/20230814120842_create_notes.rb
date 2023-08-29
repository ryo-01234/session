class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.references :tune, null: false
      t.references :user, null: false
      t.string :key, null: false
      t.string :memo
      t.string :abc, null: false
      t.timestamps
    end
  end
end
