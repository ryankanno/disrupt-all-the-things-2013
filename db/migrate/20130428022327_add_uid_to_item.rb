class AddUidToItem < ActiveRecord::Migration
  def change
    add_column :items, :uid, :text
  end
end
