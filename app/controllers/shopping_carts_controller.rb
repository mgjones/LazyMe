class ShoppingCartsController < ApplicationController
  include CurrentCart
  before_action :set_cart

  

  def new
    
    @shopping_cart.add(params[:refri_id],@shopping_cart.id)
    @shopping_cart.save
    redirect_to refrigerators_path #redirect_to session.delete(:return_to)
  end

  def show
    
    @spc=@shopping_cart.shopping_cart_items.all
    
  end

  private
    def set_cart
        @shopping_cart = ShoppingCart.find(session[:cart_id])
      rescue ActiveRecord::RecordNotFound
        @shopping_cart = ShoppingCart.create
        session[:cart_id] = @shopping_cart.id
      
    end
  
end
