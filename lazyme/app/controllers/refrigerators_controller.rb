class RefrigeratorsController < ApplicationController

def index
  @refrigerators = params[:sort] ? Refrigerator.sorted_by(params[:sort]) : Refrigerator.sorted_by("name")
end

def show
  @refrigerator = Refrigerator.find(params[:id])
end

end
