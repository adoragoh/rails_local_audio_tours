class Track < ApplicationRecord
  belongs_to :tour
  mount_uploader :photo, PhotoUploader
  mount_uploader :audio, AudioUploader
end
