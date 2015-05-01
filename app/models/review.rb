class Review < ActiveRecord::Base
  belongs_to :refrigerator

  def self.over_all_rating
    sum=0
    self.all.each do |r|
      sum+=r.rating
    end
    return sum/self.count
  end

  

end
