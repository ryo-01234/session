class AddColumnNoteScale < ActiveRecord::Migration[7.0]
  def change
    add_column :notes, :scale, :string, null: false
  end
end
