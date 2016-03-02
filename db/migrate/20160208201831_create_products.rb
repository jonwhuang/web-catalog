class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.float :price
      t.string :picture_link, default: 'http://www.muslimholidays.net/wp-content/uploads/2014/04/default-placeholder-50x50.png'

      t.timestamps null: false
    end
  end
end
