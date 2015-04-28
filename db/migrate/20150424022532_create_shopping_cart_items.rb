class CreateShoppingCartItems < ActiveRecord::Migration
  def change
    create_table :shopping_cart_items do |t|
      t.shopping_cart_item_fields
      t.integer :refrigerator_id
      t.timestamps null: false
    end
  end
end