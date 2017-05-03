class Resource < ApplicationRecord
  belongs_to :topic

  validates :url, presence: true
  validates :summary, presence: true
  validates :email, presence: true
  validates :zip_code, presence: true
end
