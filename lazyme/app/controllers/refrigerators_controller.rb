class RefrigeratorsController < ApplicationController

    def index
        if params[:commit] == "Search"
            if params[:looking_for] == ""
                redirect_to searchs_path
            end
        end
        
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
        

        @refrigerators = Refrigerator.filter(params.slice(:min, :max, :rating, :popularity, :key_word, :brand, :key_features))
        @refrigerators = Refrigerator.sorted_by(params[:sort]) if params[:sort]
    end

    def show
        @refrigerator = Refrigerator.find(params[:id])

    end    


end
