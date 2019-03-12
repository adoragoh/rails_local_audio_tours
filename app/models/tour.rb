class Tour < ApplicationRecord
  belongs_to :user
  has_many :tracks, dependent: :destroy
  has_many :photos, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :favourites, dependent: :destroy

  # The following code is not in use at the moment, but it's necessary if you're creating forms that have nested attributes and you want to save those as well.
  accepts_nested_attributes_for :photos, :allow_destroy => true
  accepts_nested_attributes_for :tracks, :allow_destroy => true

  geocoded_by :start_location
  after_validation :geocode, if: :will_save_change_to_start_location?

  validates :title, presence: true, uniqueness: true
  validates :start_location, presence: true
  validates :description, length: { minimum: 50, maximum: 2000 }, allow_blank: false
  validates :language, presence: true
  validates :category, presence: true
end
