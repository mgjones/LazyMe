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
        
    end

    def show
        @refrigerator = Refrigerator.find(params[:id])
    end

    def price_range(min, max)
        if (min == nil) and (max != nil)
            return Refrigerator.where('price >= 0').where('price <= max')
        elsif (min and max != nil)
            return Refrigerator.where('min <= price').where('price <= max')
        elsif (min and max == nil)
            return Refrigerator.order("name")
        else
            return Refrigerator.order("name")
        end

        #@refrigerators
    end

    
    

end
