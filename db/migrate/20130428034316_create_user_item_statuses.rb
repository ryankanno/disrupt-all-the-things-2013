class CreateUserItemStatuses < ActiveRecord::Migration
  def change
    create_table :user_item_statuses do |t|
      t.references :user
      t.references :item
      t.string :status
      t.timestamps
    end
  end
end
