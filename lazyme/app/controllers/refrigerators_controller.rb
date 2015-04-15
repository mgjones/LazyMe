class RefrigeratorsController < ApplicationController

    def index
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
            @refrigerators = Refrigerator.filter(params.slice(:min, :max, :rating, :popularity, :key_word, :brand, :key_features))
        end

        @refrigerators = params[:sort] ? Refrigerator.sorted_by(params[:sort]) : Refrigerator.sorted_by('name')
    end

    def show
        @refrigerator = Refrigerator.find(params[:id])

    end    


end
