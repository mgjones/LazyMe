module ApplicationHelper

  def getFridges(myFridges)
    product_ids = []
    myFridges.each do |f|
      product_ids.push(f.item_id)
    end
    return product_ids
  end

end
