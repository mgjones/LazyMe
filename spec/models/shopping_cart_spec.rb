require 'rails_helper'

RSpec.describe ShoppingCart, type: :model do
  context "add method" do
    it "should handle add item" do
      
      p=ShoppingCart.create
      p.add(2,1)
      expect(ShoppingCartItem.all).to_not be_nil
    end

  end
end
