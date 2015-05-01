class RefrigeratorsController < ApplicationController

    def index
        @refrigerators = Refrigerator.all
        if params[:commit] == "Search"
            if params[:looking_for] == ""
                redirect_to searchs_path
            else
                session[:looking_for]=params[:looking_for]
                @refrigerators = Refrigerator.search(params[:looking_for])
            end
        else
            @refrigerators = Refrigerator.search(session[:looking_for])
        end

        if params[:commit] == "Filter"
            session[:rating]=params[:rating]
            session[:popularity]=params[:popularity]
            @refrigerators = @refrigerators.filter(params.slice(:brand, :model, :configuration, :defrost_type, :compact?, :through_door_dispenser?, :automatic_icemaker?, :volume_cu_ft, :kwh_per_year, :rating, :popularity))
        else
            
            @refrigerators = @refrigerators.filter({:rating=>session[:rating], :popularity=>session[:popularity]})
        end
        if params[:sort]
            session[:sort]=params[:sort]
        end
        @refrigerators = session[:sort] ? @refrigerators.sorted_by(session[:sort]) : @refrigerators.sorted_by('name')
        
    end

    def show
        session[:return_to] ||= request.referer
        @refrigerator = Refrigerator.find(params[:id])
        #@review = Review.find(params[:revid])
        #@review.upvote = params[:increment] ? @review.upvote += 1 : @review.upvote
        #@review.downvote = params[:decrement] ? @review.downvote += 1 : @review.downvote
    end    

end
