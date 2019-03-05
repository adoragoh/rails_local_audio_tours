class Tour < ApplicationRecord
  belongs_to :user
  has_many :tracks, dependent: :destroy
  has_many :photos, dependent: :destroy

  geocoded_by :start_location
  after_validation :geocode, if: :will_save_change_to_start_location?
  #Use this in the methods --> authorize @tour
end
