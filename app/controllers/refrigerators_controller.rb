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
            session[:brand]=params[:brand]
            session[:model]=params[:model]
            session[:configuration]=params[:configuration]
            session[:defrost_type]=params[:defrost_type]
            session[:compact?]=params[:compact?]
            session[:through_door_dispenser?]=params[:through_door_dispenser?]
            session[:automatic_icemaker?]=params[:automatic_icemaker?]
            session[:volume_cu_ft]=params[:volume_cu_ft]
            session[:kwh_per_year]=params[:kwh_per_year]

            @refrigerators = @refrigerators.filter(params.slice(:brand, :model, :configuration, :defrost_type, :compact?, :through_door_dispenser?, :automatic_icemaker?, :volume_cu_ft, :kwh_per_year, :rating, :popularity))
        else
            
            @refrigerators = @refrigerators.filter({:rating => session[:rating], :popularity => session[:popularity], :brand => session[:brand], :model => session[:model], :configuration => session[:configuration], :defrost_type => session[:defrost_type], :compact? => session[:rating], :through_door_dispenser => session[:through_door_dispenser], :automatic_icemaker? => session[:automatic_icemaker?], :volume_cu_ft => session[:volume_cu_ft], :kwh_per_year => session[:kwh_per_year]})
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
