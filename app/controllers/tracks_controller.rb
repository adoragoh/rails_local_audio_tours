class TracksController < ApplicationController
  before_action :set_track, only: [:show, :edit, :update, :destroy, :goto]
  before_action :set_tour, only: [:show, :create, :edit, :update, :destroy, :goto]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @tracks = policy_scope(Track)

    # if params[:query].present?
    #   sql_query = "title ILIKE :query OR location ILIKE :query OR category ILIKE :query"
    #   @tracks = track.where(sql_query, query: "%#{params[:query]}%").where.not(latitude: nil, longitude: nil)
    # else
    #   @tracks = track.all.where.not(latitude: nil, longitude: nil)
    # end

    @markers = @tracks.map do |track|
      {
        lng: track.longitude,
        lat: track.latitude,
        infoWindow: render_to_string(partial: "/shared/map_info", locals: { track: track })
      }
    end

    # @all_tracks.each do |track|
    #   if !@categories.include?(track.category)
    #     @categories << track.category
    #   end
    # end
  end

  def show
    @marker =
      {
        lng: @track.longitude,
        lat: @track.latitude
        # infoWindow: render_to_string(partial: "infoWindow", locals: { tour: tour })
      }
    #set_track method called
    #authorize @track
    # @marker = [{
    #   lng: @track.longitude,
    #   lat: @track.latitude,
    # }]
    # @booking = Booking.new

    # if current_user != nil
    #   @booked = current_user.booked_tracks.include?(@track)
    # end

    # if @booked
    #   @booking = current_user.bookings.where(track_id: params[:id]).first
    # end
  end

  def goto
    @marker =
      {
        lng: @track.longitude,
        lat: @track.latitude
        # infoWindow: render_to_string(partial: "infoWindow", locals: { tour: tour })
      }
  end

  def new
    @track = Track.new
    authorize @track
  end

  def create
    @track = Track.new(track_params)
    authorize @track
    @track.user = current_user
    @track.tour = @tour
    @track.save
    if @track.save
      redirect_to tour_path(@tour)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @track.update(track_params)
    redirect_to tour_path(@tour)
  end

  def destroy
    @track.destroy
    redirect_to tour_path(@tour)
  end

  private

  def set_track
    @track = Track.find(params[:id])
    authorize @track
  end

  def set_tour
    @tour = Tour.find(params[:tour_id])
    authorize @tour
  end

  def track_params
    params.require(:track).permit(:title, :location, :tour_id, :photo, :audio)
  end
end
