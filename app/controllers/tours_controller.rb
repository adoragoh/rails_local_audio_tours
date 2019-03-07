class ToursController < ApplicationController
  before_action :set_tour, only: [:show, :edit, :update, :destroy]
  before_action :set_tracks, only: :show

  def index

    @tours = policy_scope(Tour)

    @tours = Tour.where.not(latitude: nil, longitude: nil)

    @markers = @tours.map do |tour|
      {
        lng: tour.longitude,
        lat: tour.latitude,
        infoWindow: render_to_string(partial: "/shared/infoWindow-tours", locals: { tour: tour })
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end


    # if params[:query].present?
    #   sql_query = "title ILIKE :query OR location ILIKE :query OR category ILIKE :query"
    #   @tours = Tour.where(sql_query, query: "%#{params[:query]}%").where.not(latitude: nil, longitude: nil)
    # else
    #   @tours = Tour.all.where.not(latitude: nil, longitude: nil)
    # end


    # @all_tours.each do |tour|
    #   if !@categories.include?(tour.category)
    #     @categories << tour.category
    #   end
    # end

  end

  def show

    # @tours = Tour.where.not(latitude: nil, longitude: nil)
    @markers = @tracks.map do |track|
      {
        lng: track.longitude,
        lat: track.latitude,
        infoWindow: render_to_string(partial: "/shared/infoWindow-tracks", locals: { track: track })
      }
    end

    # @booking = Booking.new

    # if current_user != nil
    #   @booked = current_user.booked_tours.include?(@tour)
    # end

    # if @booked
    #   @booking = current_user.bookings.where(tour_id: params[:id]).first
    # end

    # authorize @favourite

  end

  def new
    @tour = Tour.new
    authorize @tour
  end

  def create
    @tour = Tour.new(tour_params)
    authorize @tour
    @tour.user = current_user
    @tour.save
    if @tour.save
      redirect_to tour_path(@tour)
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

  private

  def set_tour
    @tour = Tour.find(params[:id])
    authorize @tour
  end

  def set_tracks
    @tracks = @tour.tracks
    authorize @tracks
  end

  def tour_params
    params.require(:tour).permit(:id, :title, :start_location, :description, :user_id, :duration, :category, :language)
  end
end
