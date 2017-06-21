class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.string :name
      t.integer :price
      t.string :image
      t.text :description
      t.integer :store_id
      t.timestamps
    end
  end
end
