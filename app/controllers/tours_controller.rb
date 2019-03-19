class ToursController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :user, :filter]
  before_action :set_tour, only: [:show, :edit, :update, :destroy]
  before_action :set_tracks, only: :show

  def index

    @tours = policy_scope(Tour)

    if params[:query].present?
      search
    else
      @tours = Tour.where.not(latitude: nil, longitude: nil)
    end

    @markers = @tours.map do |tour|
      {
        lng: tour.longitude,
        lat: tour.latitude,
        infoWindow: render_to_string(partial: "/shared/infoWindow-tours", locals: { tour: tour }),
        image_url: helpers.asset_url('https://res.cloudinary.com/dm25xqrrj/image/upload/v1551938861/Logos/Tourio-white.png')
      }
    end

  end

  def show


    @review = Review.new
    # @tours = Tour.where.not(latitude: nil, longitude: nil)

    @markers = @tracks.map do |track|
      {
        lng: track.longitude,
        lat: track.latitude,
        infoWindow: render_to_string(partial: "/shared/infoWindow-tracks", locals: { track: track }),
        image_url: helpers.asset_url('https://res.cloudinary.com/dm25xqrrj/image/upload/v1551938861/Logos/Tourio-white.png')
      }
    end
  end

  def new
    @tour = Tour.new
    authorize @tour
    @tour.photos.build(attributes = {})
  end

  def create
    @tour = Tour.new(tour_params)
    authorize @tour
    @tour.user = current_user
    @tour.save
    if @tour.save
      redirect_to new_tour_photo_path(@tour)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @tour.update(tour_params)
    redirect_to tour_path(@tour)
  end

  def destroy
    @tour.destroy
    redirect_to profile_path(just_created_tour: "true")
  end

  def user
    @tour = Tour.find(params[:tour_id])
    authorize @tour
  end

  def my_tours
    @tours = Tour.where(user_id: current_user)
    authorize @tours
  end

  def filter
    @tours = policy_scope(Tour)
    @filtered_tours = @tours.where(category: params[:query])
  end

  private

  def search
    sql_query = "title ILIKE :query OR start_location ILIKE :query OR category ILIKE :query"
    @tours = Tour.where(sql_query, query: "%#{params[:query]}%").where.not(latitude: nil, longitude: nil)
  end

  def set_tour
    @tour = Tour.find(params[:id])
    authorize @tour
  end

  def set_tracks
    @tracks = @tour.tracks.order(id: :asc)
    authorize @tracks
  end

  def tour_params
    params.require(:tour).permit(:id, :title, :start_location, :description, :user_id, :duration, :category, :language)
  end
end
