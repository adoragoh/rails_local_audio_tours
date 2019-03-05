class Photo < ApplicationRecord
  belongs_to :tour
  mount_uploader :photo, PhotoUploader
end
