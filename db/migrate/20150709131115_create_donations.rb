class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.string :name
      t.text :description
      t.string :category
      t.datetime :expiry
      t.string :city
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
