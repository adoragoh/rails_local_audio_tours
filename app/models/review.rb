class Review < ApplicationRecord
  belongs_to :tour
  belongs_to :user
  validates :content, presence: true
end
