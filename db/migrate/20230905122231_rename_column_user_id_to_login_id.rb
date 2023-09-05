class RenameColumnUserIdToLoginId < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :user_id, :login_id
  end
end
