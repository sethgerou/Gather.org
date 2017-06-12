class Resource < ApplicationRecord
  belongs_to :topic
  has_many :reviews, dependent: :destroy

  validates :url, presence: true
  validates :summary, presence: true
  validates :email, presence: true
  validates :zip_code, presence: true
  validates :name, presence: true
end
