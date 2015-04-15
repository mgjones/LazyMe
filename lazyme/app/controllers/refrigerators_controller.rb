class RefrigeratorsController < ApplicationController

    def index
        if params[:commit] == "Search"
            if params[:looking_for] == ""
                redirect_to searchs_path
            end
        end
        @refrigerators = Refrigerator.filter(params.slice(:min, :max, :rating, :popularity, :key_word, :brand, :key_features))
    end

    def show
        @refrigerator = Refrigerator.find(params[:id])

    end    


end
