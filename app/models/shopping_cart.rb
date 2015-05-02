class ShoppingCart < ActiveRecord::Base
  acts_as_shopping_cart
  

  def add(refri_id,shopping_cart_id)
    
    @shopping_cart=ShoppingCart.find(shopping_cart_id)
    current_item = @shopping_cart.shopping_cart_items.find_by(item_id:refri_id)
    
    current_item = @shopping_cart.shopping_cart_items.build(item_id:refri_id) unless current_item
    current_item.save
  end
end
