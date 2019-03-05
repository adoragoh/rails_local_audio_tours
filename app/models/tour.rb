class Tour < ApplicationRecord
  belongs_to :user
  has_many :tracks
  has_many :photos

  geocoded_by :start_location
  after_validation :geocode, if: :will_save_change_to_start_location?

  def index
    @tours = policy_scope(Tour)
  end
end
