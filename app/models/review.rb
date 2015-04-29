class Review < ActiveRecord::Base

    belongs_to :refrigerator
    
    
=begin
    def has_reviews
        @reviews = Refrigerator.find(params[:id]).where.not(description: nil)
        if @reviews > 1
            return true
        else
            return false
        end
    end
=end
end
