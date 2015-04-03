class RefrigeratorsController < ApplicationController

    def index
        if params[:commit] == "Filter"
	    if params[:min]
		session[:min] = params[:min]
	    else
		session.delete(:min)
	    end
	    if params[:max]
		session[:max]=params[:max]
	    else
		session.delete(:max)
	    end
            if params[:rating]
		session[:rating]=params[:rating]
	    else
		session.delete(:rating)
	    end
            
        end
        if params[:commit] == "Search"
            if params[:key_word]
		session[:key_word]=params[:key_word]
	    else
		session.delete(:key_word)
	    end
            if params[:price]
		session[:price]=params[:price]
	    else
		session.delete(:price)
	    end    
            if params[:brand]
		session[:brand]=params[:brand]
	    else
		session.delete(:brand)
	    end
            if params[:rating]
		session[:rating]=params[:rating]
	    else
		session.delete(:rating)
	    end
            if params[:popularity]
		session[:popularity]=params[:popularity]
	    else
		session.delete(:popularity)
	    end
            if params[:key_features]
		session[:key_features]=params[:key_features]
	    else
		session.delete(:key_features)
	    end
        end
	    #if params[:order]
	    #    session[:order]=params[:order]
	    #end

        @refrigerators = params[:sort] ? Refrigerator.sorted_by(params[:sort]) : Refrigerator.sorted_by("name")

        if session[:min] != "" && session[:min] != nil
	    @refrigerators = @refrigerators.where("price >= ?",session[:min])
	end

	if session[:max] != "" && session[:max] != nil		
	    @refrigerators = @refrigerators.where("price <= ?",session[:max])
	end
        
        if session[:rating] != "" && session[:rating] != nil
            @refrigerators = @refrigerators.where("rating >= ?", session[:rating])
        end

        if session[:popularity] != "" && session[:popularity] != nil
	    @refrigerators = @refrigerators.where("popularity >= ?",session[:popularity])
	end
        
        if session[:key_word] != "" && session[:key_word] != nil
        
	    @refrigerators = @refrigerators.where("name like ?","%#{session[:key_word]}%")
	end

        if session[:brand] != "" && session[:brand] != nil
	    @refrigerators = @refrigerators.where("brand like ?","%#session[:brand]}%")
	end
    
        if session[:key_features] != "" && session[:key_features] != nil
	    @refrigerators = @refrigerators.where("key_features like ?","%#session[:key_features]%")
	end
    end

    def show
        @refrigerator = Refrigerator.find(params[:id])
    end

    

    
    

end
