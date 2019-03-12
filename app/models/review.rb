class Review < ApplicationRecord
  belongs_to :tour
  belongs_to :user
  validates :content, length: { minimum: 20 }
end
