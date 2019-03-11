class Track < ApplicationRecord
  belongs_to :tour

  mount_uploader :photo, PhotoUploader
  mount_uploader :audio, AudioUploader

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
