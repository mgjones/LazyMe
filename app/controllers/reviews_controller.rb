class ReviewsController < ApplicationController

    ## get object for new review 
    def new
        @refrigerator = Refrigerator.find(params[:refrigerator_id])
        @review = Review.new
    end

    ## create a new review
    
    def create 
        @refrigerator = Refrigerator.find(params[:refrigerator_id])
        @review = @refrigerator.reviews.build(create_update_params)
        @review.refrigerator_id = params[:refrigerator_id]

        if @review.save!

            flash[:notice] = 'Review successfully created.'
            redirect_to refrigerator_path(params[:refrigerator_id])
        else
            flash[:notice] = 'Could not create new review.'
            redirect_to (new_refrigerator_review_path(@refrigerator))
        end
    end
    
    private
        def create_update_params
            params.require(:review).permit(:icecubes, :description, :refrigerator_id)
        end

end
