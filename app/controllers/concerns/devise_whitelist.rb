# UpperCamelCase. Capital are mapped with filename '_'
module DeviseWhitelist
  # if concern need to extend activesupport concern
  extend ActiveSupport::Concern

  included do
    before_action :set_title
  end

  def set_title
    @page_title = "DevCamp Portofilio | Starter Website"
  end

end