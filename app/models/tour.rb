class Tour < ApplicationRecord
  belongs_to :user
  has_many :tracks, dependent: :destroy
  has_many :photos, dependent: :destroy

  #Use this in the methods --> authorize @tour
end
