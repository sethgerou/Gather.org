class Review < ApplicationRecord
  belongs_to :resource

  validates :stars, presence: true
  validates :body, presence: true
  validates :author, presence: true
  validates :email, presence: true
end
