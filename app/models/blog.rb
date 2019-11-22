class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }

  extend FriendlyId
  friendly_id :title, use: :slugged

  # make fields required
  validates_presence_of :title, :body

  # foreign key many-to-1
  belongs_to :topic
end
