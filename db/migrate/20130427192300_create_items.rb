class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :heading, :default => ""
      t.string :description, :default => ""
      t.string :photo 
      t.point  :lonlat, :geographic => true, :spatial => true
      t.timestamps
    end
  end
end
