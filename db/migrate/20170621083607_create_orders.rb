class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :driver_id
      t.integer :menu_id
      t.integer :quantity
      t.integer :total_price
      t.timestamps
    end
  end
end
