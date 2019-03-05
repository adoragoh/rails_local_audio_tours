class ToursController < ApplicationController
  def index
    @tours = policy_scope(Tour).order(created_at: :desc)
  end
end
