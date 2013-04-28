class AddPictureAndPhoneNumberToUser < ActiveRecord::Migration
  def change
    add_column :users, :profile_picture, :string
    add_column :users, :phone_number, :string
  end
end
