class PhotosController < ApplicationController
before_action :set_tour, only: [:new, :create]

  def new
    @photo = Photo.new
    authorize @photo
  end

  def create
    @photos = params[:photo][:photo]
    @photos.each do |photo|
      # @tour.photos.create(photo: photo)
      @photo = Photo.new(photo: photo)
      authorize @photo
      @photo.tour = @tour
      render :new unless @photo.save
    end
    redirect_to new_tour_track_path(@tour)
  end

  private

  def photo_params
    params.require(:photo).permit(:photo, :tour_id)
  end

  def set_tour
    @tour = Tour.find(params[:tour_id])
    authorize @tour
  end

end
