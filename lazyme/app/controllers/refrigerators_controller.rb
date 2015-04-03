class RefrigeratorsController < ApplicationController

    def index
        if ((params[:commit] == "Filter") || (params[:commit] == "Search"))
            params.each do |p|
                if ((p[0] != "utf8") && (p[0] != "commit"))
                    ## for each param in params hash
                    ## put it into the session hash
                    if params[p[0].to_sym]
                        session[p[0].to_sym] = params[p[0].to_sym]
                    else
                        session.delete(p[0].to_sym)

                    end
                end
            end

        end

        @refrigerators = params[:sort] ? Refrigerator.sorted_by(params[:sort]) : Refrigerator.sorted_by("name")
        byebug
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
	    @refrigerators = @refrigerators.where("name like ?",session[:key_word])
	end

        if session[:brand] != "" && session[:brand] != nil
	    @refrigerators = @refrigerators.where("brand like ?",session[:brand])
	end
    
        if session[:key_features] != "" && session[:key_features] != nil
	    @refrigerators = @refrigerators.where("key_features like ?",session[:key_features])
	end
    end

    def show
        @refrigerator = Refrigerator.find(params[:id])
    end    

end
