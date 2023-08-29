class AddLoginFn < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :password_digest, :string
    add_column :users, :remember_digest, :string
    add_column :users, :user_id, :string, null:false
  end
end
