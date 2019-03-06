class Tour < ApplicationRecord
  belongs_to :user
  has_many :tracks, dependent: :destroy
  has_many :photos, dependent: :destroy
  has_many :reviews, dependent: :destroy

  geocoded_by :start_location
  after_validation :geocode, if: :will_save_change_to_start_location?

  validates :title, presence: true, uniqueness: true
  validates :start_location, presence: true
  validates :description, length: { minimum: 50, maximum: 2000 }, allow_blank: false
  validates :capacity, presence: true, numericality: { only_integer: true }
  validates :language, presence: true
  validates :category, presence: true
end
