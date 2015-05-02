class Refrigerator < ActiveRecord::Base
  include Filterable
 
  has_many :reviews

  scope :brand, ->(brand) { where("brand like ?", "%#{brand}%") }
  scope :model, ->(model) { where("model like ?", "%#{model}%") }
  scope :configuration, ->(configuration) { where("configuration like ?", "%#{configuration}%") }
  scope :defrost_type, ->(def_type) { where(defrost_type: def_type) }
  scope :compact?, ->(compact) { where(compact?: compact) }
  scope :through_door_dispenser?, ->(tdd) { where(through_door_dispenser?: tdd) }
  scope :automatic_icemaker?, ->(ai) { where(automatic_icemaker?: ai) }
  scope :min_volume, ->(volume) { where("volume_cu_ft >= ?", "%#{volume}%") }
  scope :max_volume, ->(volume) { where("volume_cu_ft <= ?", "%#{volume}%") }  
  scope :max_kwh_per_year, ->(kwh) { where("kwh_per_year <= ?", "%#{kwh}%") }
  scope :rating, ->(min_rating) { where("rating >= ?", min_rating) }
  scope :popularity, ->(min_pop) { where("popularity >= ?", min_pop) }
  
  
  def self.sorted_by(field)
    if Refrigerator.column_names.include?(field)
      return Refrigerator.order(field)
    end
    return Refrigerator.order("brand")
  end

  def self.search(input)
    if input=="all"
      return Refrigerator.all
    end
    return Refrigerator.where("brand like ?", "%#{input}%")
  end
  
  

  def show_reviews

  end

  
end
