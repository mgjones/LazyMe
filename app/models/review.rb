class Review < ActiveRecord::Base

    belongs_to :refrigerator #, foreign_key: "refrigerator_id"
    # changes that can be made to the review itself
=begin
    def index
        @reviews = Review.all(params[:refrigerator_id])
        @reviews = refrigerator.reviews
        @review = Review.new
    end
=end
    #this can't possibly be correct ...
    def icecube
        ## create rating system
        #@review = Review.save(:icecubes)
    end

    def description
        #write the review of the refrigerator ?
        #@refrigerator = Review.create(params[:refrigerator_id])
        #@refrigerator = Review.all(params[:refrigerator_id])
    end

end
