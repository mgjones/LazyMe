class Review < ActiveRecord::Base

    belongs_to :refrigerator
    
    

    def has_reviews
        @reviews = Refrigerator.review(@refrigerator)
        if @reviews > 1
            return true
        else
            return false
        end
    end
   
end
