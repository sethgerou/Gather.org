class Story < ApplicationRecord
  belongs_to :topic

  validates :email, presence: true
  validates :body, presence: true
end
