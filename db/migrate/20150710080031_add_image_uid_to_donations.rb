class AddImageUidToDonations < ActiveRecord::Migration
  def change
    add_column :donations, :image_uid, :string
  end
end
