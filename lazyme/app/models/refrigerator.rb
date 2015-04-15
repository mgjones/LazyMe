class Refrigerator < ActiveRecord::Base
  include Filterable
 
  default_scope { order('name') }
  scope :min, ->(min) { where("price >= ?", min) }
  scope :max, ->(max) { where("price <= ?", max) }
  scope :rating, ->(min_rating) { where("rating >= ?", min_rating) }
  scope :popularity, ->(min_pop) { where("popularity >= ?", min_pop) }
  scope :key_word, ->(key_word) { where("name like ?", key_word) }
  scope :brand, ->(brand) { where("brand like ?", brand) }
  scope :key_features, ->(key_features) { where("name like ?", key_features) }
  
  def self.sorted_by(field)
    if Refrigerator.column_names.include?(field)
      byebug()
      return Refrigerator.order(field)
    end
    return Refrigerator.order("name")
  end

  def self.search(input)
    return Refrigerator.where("name like ?", "%#{input}%")
  end
end
