class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                reject_if: ->(attrs) { attrs['name'].blank? }

  includes Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  # - add manager like in python. 2 ways on how to do it
  def self.angular
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_portofolio_items, -> { where(subtitle: 'Ruby on Rails') }
  # -

  # second way of setting defaults
  after_initialize :set_defaults

  def set_defaults
    # `||=` assign if nil
    self.main_image ||= Placeholder.image_generator(height: 600, width: 300)
    self.thumb_image ||= Placeholder.image_generator(height: 200, width: 300)
  end
  # -
end
