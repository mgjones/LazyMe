module CurrentCart
  extend ActiveSupport::Concern

    private

      def set_cart
        @shopping_cart = ShoppingCart.find(session[:cart_id])
      rescue ActiveRecord::RecordNotFound
        @shopping_cart = ShoppingCart.create
        session[:cart_id] = @shopping_cart.id
      end
end