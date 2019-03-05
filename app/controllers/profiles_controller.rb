class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def index
    @tours = policy_scope(Tour)
    @favourites = policy_scope(Favourite)

    @my_tours = @tours.where(user_id: current_user).order(created_at: :desc)
    @my_favourites = @favourites.where(user_id: current_user).order(created_at: :desc)

    @just_favourited = params[:just_favourited] == "true"
    @just_created_tour = params[:just_created_tour] == "true"
  end
end
