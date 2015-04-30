class Refrigerator < ActiveRecord::Base
  include Filterable
 
  has_many :reviews

  scope :rating, ->(min_rating) { where("rating >= ?", min_rating) }
  scope :popularity, ->(min_pop) { where("popularity >= ?", min_pop) }
  scope :brand, ->(brand) { where("brand like ?", "%#{brand}%") }
  
  def self.sorted_by(field)
    if Refrigerator.column_names.include?(field)
      return Refrigerator.order(field)
    end
    return Refrigerator.order("brand")
  end

  def self.search(input)
    return Refrigerator.where("brand like ?", "%#{input}%")
  end
  
  def has_reviews
    @reviews = Refrigerator.where.not(description: nil)
    if @reviews == nil
      return false
    else
      return true
    end
  end

  def show_reviews

  end

  def popularity_update
    self.popularity = self.popularity + 1
    self.save
  end
end
