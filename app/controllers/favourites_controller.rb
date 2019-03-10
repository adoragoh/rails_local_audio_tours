class FavouritesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_favourite, only: [:edit, :update, :destroy]
  before_action :set_tour, only: [:new, :create, :destroy]

  def index
    @favourites = policy_scope(Favourite)
    @favourites = Favourite.all
  end

  def show
  end

  def new
    @favourite = Favourite.new
    authorize @favourite
  end

  def create
    @favourite = Favourite.new()
    authorize @favourite
    @favourite.user = current_user
    @favourite.tour = @tour
    if @favourite.save
      respond_to do |format|
        format.html { redirect_to tour_path(params[@tour]) }
        format.js
      end
    end
  end

  def edit
  end

  def update
    @favourite.update(favourite_params)
    redirect_to favourite_path(@favourite)
  end

  def destroy
    if @favourite.destroy
      respond_to do |format|
        format.html { redirect_to tour_path(params[@tour]) }
        format.js
      end
    end
  end

  private

  def set_favourite
    @favourite = Favourite.find(params[:id])
    authorize @favourite
  end

  def set_tour
    @tour = Tour.find(params[:tour_id])
    authorize @tour
  end

  def favourite_params
    params.require(:favourite).permit(:tour_id, :user_id)
  end
end
