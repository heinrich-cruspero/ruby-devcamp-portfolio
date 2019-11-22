module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(height:, width:)
    "https://picsum.photos/id/#{rand(1..200)}/#{height}/#{width}"
  end
end