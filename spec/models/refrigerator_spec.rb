require 'rails_helper'

RSpec.describe Refrigerator, type: :model do
  context "the sorted_by method" do
    it "should exist" do
      expect(Refrigerator).to respond_to(:sorted_by)
    end

    it "should call the right underlying ActiveRecord method to do default sort" do
      expect(Refrigerator).to receive(:order).with("name") 
      Refrigerator.sorted_by("name")
    end

    it "should call the right underlying ActiveRecord method to sort by price" do
      expect(Refrigerator).to receive(:order).with("price") 
      Refrigerator.sorted_by("price")
    end

    it "should handle the situation when a bogus sort column is given" do
      expect(Refrigerator).to receive(:order).with("name") 
      Refrigerator.sorted_by("bogus_column")
    end
  end

  context "the popularity method" do
    it "should exist" do
      r=Refrigerator.new
      expect(r).to respond_to(:popularity_update)
    end
 
    it "should update popularity" do
      #expect(Refrigerator).to receive(:popularity_update)
      r=Refrigerator.new
      r.popularity=0
      r.popularity_update
      expect(r.popularity).to eq 1
    end 
  end


  pending "add some examples to (or delete) #{__FILE__}"
end
