class Topic < ApplicationRecord
  has_many :articles
  has_many :stories
  has_many :resources

  validates :name, presence: true
  validates :summary, presence: true

end
