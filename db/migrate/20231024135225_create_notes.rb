class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.references :tune, null: false
      t.references :user, null: false
      t.string :key, null: false
      t.string :scale, null: false
      t.string :status, null:false
      t.string :abc, null: false
      t.string :memo
      t.timestamps
    end
  end
end
