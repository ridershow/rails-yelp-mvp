class ReviewsController < ApplicationController
  def new
    @review = Review.new
    redirect_to restaurant_path
  end

  def create
    @review = Review.new(user_params)
    @review.save
    redirect_to review_path
  end
end
