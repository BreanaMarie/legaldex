class ReviewsController < ApplicationController
  def index
    @reviews = Review.all.order(:rate)
  end

  def show
  end

  def new
    @review = Review.new
    @current_user = current_user
    @experts = Expert.all
  end

  def create
    review_params = params.require(:review).permit(:user_id, :expert_id, :rate, :opinion)
    @review = Review.new(review_params)
    @current_user = current_user
    @experts = Expert.all
     if @review.save
      @review.update_attribute(:user_id, current_user.id)
      redirect_to @current_user# <-- go to show
     else
       render :new
     end
  end

  def edit
  end
end
