class Tour < ApplicationRecord
  belongs_to :user

  #Use this in the methods --> authorize @tour

  def index
    @tours = policy_scope(Tour)
  end
end
