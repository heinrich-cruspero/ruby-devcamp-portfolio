class Topic < ApplicationRecord
  validates_presence_of :title

  # foreign key 1-to-many
  has_many :blogs
end
