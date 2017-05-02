class Topic < ApplicationRecord
  has_many :articles
  has_many :stories
  has_many :resources
end
