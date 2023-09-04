class AddcolumnNotesStatus < ActiveRecord::Migration[7.0]
  def change
    add_column :notes, :status, :string, null: false
  end
end
