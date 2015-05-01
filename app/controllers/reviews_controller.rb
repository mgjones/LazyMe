class ReviewsController < ApplicationController

  def index
    @reviews=Review.all
  end

  def new
    if user_signed_in?
      @author=current_user.email
    else
      @author="Anonymous"
    end
    @refri_id=params[:refrigerator_id]
    @post=Review.new
  end

  def create
    
    p = Review.new(create_update_params) 
    r = Refrigerator.find(params[:review][:refrigerator_id])
    r.reviews << p
		if p.save
			flash[:notice] = "New review created successfully"
			redirect_to refrigerator_path(id:params[:review][:refrigerator_id])
		else
			flash[:warning] = "New review couldn't be created"
			redirect_to new_review_path
		end
  end

  def update_upvote
    p=Review.find(params[:review_id])
    p.upvote+=1
    p.save
    redirect_to :back
  end

  def update_downvote
    p=Review.find(params[:review_id])
    p.downvote+=1
    p.save
    redirect_to :back
  end

  private

	

  	def create_update_params
  	  	params.require(:review).permit(:description, :rating, :author, :upvote, :downvote, :refrigerator_id)
  	end

end
