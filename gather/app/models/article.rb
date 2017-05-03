class Article < ApplicationRecord
  belongs_to :topic

  validates :author, presence: true
  validates :email, presence: true
  validates :body, presence: true
end
