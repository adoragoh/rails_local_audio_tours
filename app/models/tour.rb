class Tour < ApplicationRecord
  belongs_to :user
  has_many :tracks
  has_many :photos

  #Use this in the methods --> authorize @tour

  def index
    @tours = policy_scope(Tour)
  end
end
