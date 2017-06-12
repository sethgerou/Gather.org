class Topic < ApplicationRecord
  has_many :articles, dependent: :destroy
  has_many :stories, dependent: :destroy
  has_many :resources, dependent: :destroy

  validates :name, presence: true
  validates :summary, presence: true

end
