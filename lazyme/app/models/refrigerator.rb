class Refrigerator < ActiveRecord::Base

  def self.sorted_by(field)
    if Product.column_names.include?(field)
      return Product.order(field)
    end
    return Product.order("name")
  end
end
