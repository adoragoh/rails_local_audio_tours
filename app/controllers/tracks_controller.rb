class TracksController < ApplicationController
  before_action :set_track, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:index, :create]

  def index
    @tracks = policy_scope(Track)

    # if params[:query].present?
    #   sql_query = "title ILIKE :query OR location ILIKE :query OR category ILIKE :query"
    #   @tracks = track.where(sql_query, query: "%#{params[:query]}%").where.not(latitude: nil, longitude: nil)
    # else
    #   @tracks = track.all.where.not(latitude: nil, longitude: nil)
    # end

    # @markers = @tracks.map do |track|
    #   {
    #     lng: track.longitude,
    #     lat: track.latitude,
    #     infoWindow: render_to_string(partial: "/shared/map_info", locals: { track: track })
    #   }
    # end

    # @all_tracks.each do |track|
    #   if !@categories.include?(track.category)
    #     @categories << track.category
    #   end
    # end
  end

  def show
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

    authorize @booking
  end

  def new
    @track = Track.new
    authorize @track
  end

  def create
    @track = Track.new(track_params)
    authorize @track
    @track.user = current_user
    @track.save
    if @track.save
      redirect_to track_path(@track)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @track.update(track_params)
    redirect_to track_path(@track)
  end

  def destroy
    @track.destroy
    redirect_to profile_path(just_tracks: "true")
  end

  private

  def set_track
    @track = Track.find(params[:id])
    authorize @track
  end

  def track_params
    params.require(:track).permit(:title, :location:start_location, :description, :user_id, :duration, :category, :language)
  end
end
