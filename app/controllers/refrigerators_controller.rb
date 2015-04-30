class RefrigeratorsController < ApplicationController

    def index
        @refrigerators = Refrigerator.all
        if params[:commit] == "Search"
            if params[:looking_for] == ""
                redirect_to searchs_path
            else
                @refrigerators = Refrigerator.search(params[:looking_for])
            end
        end

        if params[:commit] == "Filter"
            @refrigerators = @refrigerators.filter(params.slice(:rating, :popularity))
        end
       
        @refrigerators = params[:sort] ? @refrigerators.sorted_by(params[:sort]) : @refrigerators.sorted_by('name')
        
    end

    def show
        session[:return_to] ||= request.referer
        @refrigerator = Refrigerator.find(params[:id])
        #@review = Review.find(params[:revid])
        #@review.upvote = params[:increment] ? @review.upvote += 1 : @review.upvote
        #@review.downvote = params[:decrement] ? @review.downvote += 1 : @review.downvote
    end    

end
