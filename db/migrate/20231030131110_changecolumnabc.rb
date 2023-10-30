class Changecolumnabc < ActiveRecord::Migration[7.0]
  def up
    change_column :notes, :abc, :text, null: false
  end

  def down
    change_column :notes, :abc, :string, null: false
  end
end
