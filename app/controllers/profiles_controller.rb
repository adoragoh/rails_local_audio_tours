class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @email = current_user.email
    @first_name = current_user.first_name
    @last_name = current_user.last_name

    # 1. Form already filled in with user attributes
    # 2. When you submit, it updates the user's information

    # @tours = policy_scope(Tour)
    # @favourites = policy_scope(Favourite)

    # @my_tours = @tours.where(user_id: current_user).order(created_at: :desc)
    # @my_favourites = @favourites.where(user_id: current_user).order(created_at: :desc)

    # @just_favourited = params[:just_favourited] == "true"
    # @just_created_tour = params[:just_created_tour] == "true"
  end
end
