# UpperCamelCase. Capital are mapped with filename '_'
module DeviseWhitelist
  # if concern need to extend activesupport concern
  extend ActiveSupport::Concern

  included do
    before_action :configure_permitted_params, if: :devise_controller?
  end

  def configure_permitted_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

end