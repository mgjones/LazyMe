class ReviewsController < ApplicationController

    ## get object for new review 
    def new
        @refrigerator = Refrigerator.find(params[:refrigerator_id])
        @review = Review.new
    end


    ## create a new review
    def create 
        @refrigerators = Refrigerator.find(params[:refrigerator_id])
        @review = Review.new(create_update_params)
        @refrigerators.description << @review

        if @review.save
            flash[:notice] = 'Review successfully created.'
            redirect_to (refrigerator_path(@refrigerator))
        else
            flash[:notice] = 'Could not create new review.'
            redirect_to (new_refrigerator_review_path(@refrigerator))
        end
    end
    
    def description
        ## How to deal with description that comes from the form ..?
        @reviews = Review.new(create_update_params) 
    end

    #def printDescription
        #get function from the model?
   # end

    private
        def create_update_params
            params.require(:review).permit(:stars, :review)
        end

end
