class Refrigerator < ActiveRecord::Base
  include Filterable
 
  has_many :reviews

  scope :price, ->(price) { where("price >= ?", price) }
  scope :min, ->(min) { where("price >= ?", min) }
  scope :max, ->(max) { where("price <= ?", max) }
  scope :rating, ->(min_rating) { where("rating >= ?", min_rating) }
  scope :popularity, ->(min_pop) { where("popularity >= ?", min_pop) }
  scope :key_word, ->(key_word) { where("name like ?", "%#{key_word}%") }
  scope :brand, ->(brand) { where("brand like ?", "%#{brand}%") }
  scope :key_features, ->(key_features) { where("keyfeatures like ?", "%#{key_features}%") }
  
  def self.sorted_by(field)
    if Refrigerator.column_names.include?(field)
      return Refrigerator.order(field)
    end
    return Refrigerator.order("name")
  end

  def self.search(input)
    return Refrigerator.where("name like ?", "%#{input}%")
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
