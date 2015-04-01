class Refrigerator < ActiveRecord::Base

  def price_range(min, max)
    #@refrigerators
  end

  def self.sorted_by(field)
    if Refrigerator.column_names.include?(field)
      return Refrigerator.order(field)
    end
    return Refrigerator.order("name")
  end
end
