class CreateNgos < ActiveRecord::Migration
  def change
    create_table :ngos do |t|
      t.string :name
      t.integer :owner_id
      t.string :city
      t.text :details
      t.string :logo_uid

      t.timestamps null: false
    end
  end
end
