class AddColumnsToUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email
      t.string :provider, null: false
      t.string :uid, null: false
      t.text :access_token, null: false
      t.timestamps
    end
  end
end
