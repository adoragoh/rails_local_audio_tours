class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :create]
  before_action :set_tour, only: [:new, :create]

  def create
    if request.referer.include? "tracks"
      id = @tour.track_ids.last
      @track = Track.find(id)
    end
    @review = Review.new(review_params)
    @review.tour = @tour
    @review.user = current_user
    authorize @review
    respond_to do |format|
      if @review.save
        format.html { redirect_to tour_path(@tour) }
        format.js
      else
        format.html { render 'tracks/show' }
        format.js
      end
    end

  end

  private

  def set_tour
    @tour = Tour.find(params[:tour_id])
    authorize @tour
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
