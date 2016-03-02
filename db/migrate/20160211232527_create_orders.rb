class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.boolean :purchased, default: false
      t.string :shipping_address_street
      t.string :shipping_address_city
      t.string :shipping_address_state
      t.integer :shipping_address_zip

      t.timestamps null: false
    end
  end
end
