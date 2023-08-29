class CreatePicks < ActiveRecord::Migration[7.0]
  def change
    create_table :picks do |t|
      t.references :note, null: false
      t.references :playlist,null: false
      t.timestamps
    end
  end
end
