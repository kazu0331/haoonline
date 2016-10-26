class ReviewsController < ApplicationController
  before_action :review_set, only: [:destroy, :update]
  before_action :authenticate_user!

  def create
    @review = Review.create(review_params)
    redirect_to "/products/#{@review.product_id}"
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    redirect_to root_path #productのshowへ
  end

   def edit
    @review = Review.find(params[:id])
    @product = @review.product
  end

  def update
    @review.update(review_params)
    redirect_to "/products/#{@review.product_id}"
  end

  private
    def review_params
      params.require(:review).permit(:review, :product_id).merge(user_id: current_user.id)
    end

    def review_set
      @review = Review.find(params[:id])
    end
end
