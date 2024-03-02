class ReviewsController < ApplicationController
  def index
    @reviews = Review.all.where(activity: params[:activity_id])
  end

  def show
    @review = params(:review_id)
  end
end
