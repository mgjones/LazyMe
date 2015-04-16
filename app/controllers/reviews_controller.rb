class ReviewsController < ApplicationController

    ## get object for new review 
    def new
        @refrigerator = Refrigerator.find(params[:refrigerator_id])
        @review = Review.new(@review)
    end

    ## create a new review
    
    def create 
        @refrigerator = Refrigerator.find(params[:refrigerator_id])
        @review = Review.create(create_update_params)
        @refrigerator.reviews << @review

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
            params.require(:review).permit(:icecubes, :description)
        end

end
