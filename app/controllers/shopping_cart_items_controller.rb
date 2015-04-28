class ShoppingCartItemsController < ApplicationController
  before_action :set_cart
  before_action :set_shopping_cart_item

  def destroy
    @shopping_cart_item.destroy
    redirect_to :back
  end  




  private

    def set_cart
        @shopping_cart = ShoppingCart.find(session[:cart_id])
      rescue ActiveRecord::RecordNotFound
        @shopping_cart = ShoppingCart.create
        session[:cart_id] = @shopping_cart.id
      
    end

    def set_shopping_cart_item
      @shopping_cart_item = @shopping_cart.shopping_cart_items.find_by(id: params[:item_id])
    end


end