class CreateTableNgosUsers < ActiveRecord::Migration
  def change
    create_table :ngos_users do |t|
      t.integer :user_id
      t.integer :ngo_id
    end
  end
end
