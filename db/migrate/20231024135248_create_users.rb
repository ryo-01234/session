class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false, uniqueness: true
      t.string :pref, null: false
      t.string :date, null: false
      t.string :login_id, null:false
      t.string :password_digest
      t.string :remember_digest
      t.string :memo
      t.timestamps
    end
  end
end
