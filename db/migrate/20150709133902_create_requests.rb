class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :ngo_id
      t.integer :user_id
      t.integer :donation_id
      t.string :status

      t.timestamps null: false
    end
  end
end
