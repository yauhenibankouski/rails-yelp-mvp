class ReviewsController < ApplicationController
  #QUESTION: What is the purpose of New and of Create?
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    @review.rating = @review.rating.to_i
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render "new"
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
