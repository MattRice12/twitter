class Tweet < ApplicationRecord
  belongs_to :user

  validates :body, length: { minimum: 1, maximum: 140 }
end
