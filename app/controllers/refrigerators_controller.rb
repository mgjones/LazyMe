class RefrigeratorsController < ApplicationController

    def index
        byebug()
        @refrigerators = Refrigerator.all

        if params[:commit] == "Search"
            if params[:looking_for] == ""
                redirect_to searchs_path
            else
                @refrigerators = Refrigerator.search(params[:looking_for])
            end
        end

        ## puts everything in params into session, but for now it's useless ##
        if ((params[:commit] == "Filter") || (params[:commit] == "Search"))
            params.each do |p|
                if ((p[0] != "utf8") && (p[0] != "commit"))
                    if params[p[0].to_sym]
                        session[p[0].to_sym] = params[p[0].to_sym]
                    else
                        session.delete(p[0].to_sym)
                    end
                end
            end
        end
        
        if params[:commit] == "Filter"
            @refrigerators = @refrigerators.filter(params.slice(:price, :min, :max, :rating, :popularity, :key_word, :brand, :key_features))
        end
       
        @refrigerators = params[:sort] ? @refrigerators.sorted_by(params[:sort]) : @refrigerators.sorted_by('name')
        
    end

    def show
        byebug()
        session[:return_to] ||= request.referer
        @refrigerator = Refrigerator.find(params[:id])
        @review = Review.find(params[:revid])
        @review.upvote = params[:increment] ? @review.upvote += 1 : @review.upvote
        @review.downvote = params[:decrement] ? @review.downvote += 1 : @review.downvote
    end    

    def show_reviews
        @reviews = Refrigerator.find(params[:refrigerator_id]).where.not(description: nil)
    end
=begin
    def reviews
        @refrigerator = Refrigerator.find(params[:review])
    end
=end
end
