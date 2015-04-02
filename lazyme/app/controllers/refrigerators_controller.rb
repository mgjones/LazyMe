class RefrigeratorsController < ApplicationController

    def index
        @refrigerators = params[:sort] ? Refrigerator.sorted_by(params[:sort]) : Refrigerator.sorted_by("name")
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
