class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_portofolio_items, -> { where(subtitle: 'Ruby on Rails')}

  # second way of setting defaults
  after_initialize :set_defaults

  def set_defaults
    # `||=` assign if nil
    self.main_image ||= "https://picsum.photos/id/#{rand(1..200)}/600/300"
    self.thumb_image ||= "https://picsum.photos/id/#{rand(1..200)}/200/300"
  end
  # -
end
