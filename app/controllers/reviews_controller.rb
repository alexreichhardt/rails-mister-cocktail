
class ReviewsController < ApplicationController

  before_action :find_review, only: [:show]
  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @review =  Review.new(params_review)
    @review.cocktail = Cocktail.find(params[:cocktail_id])
    if @review.save
      redirect_to cocktail_path(@review.cocktail)
    else
      redirect_to new_cocktail_review_path(@review.cocktail)
    end
  end

  private

  def find_review
    @review = Review.find(params[:id])
  end
  def params_review
    params.require(:review).permit(:username, :content, :rating)
  end
end
