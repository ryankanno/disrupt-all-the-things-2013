class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :heading, :default => ""
      t.text :description, :default => ""
      t.string :photo 
      t.string :status
      t.datetime :available_at
      t.point  :lonlat, :geographic => true, :spatial => true
      t.timestamps
    end
  end
end
