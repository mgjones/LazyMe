class Refrigerator < ActiveRecord::Base
  include Filterable
<<<<<<< HEAD

  has_many :reviews, foreign_key:  "refrigerator_id"
=======
 
  has_many :reviews #, foreign_key:  "refrigerator_id"
>>>>>>> faccdcdb161c001905138b6117a3e9cb48a72a81

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

  def popularity_update
    self.popularity = self.popularity + 1
    self.save
  end
end
