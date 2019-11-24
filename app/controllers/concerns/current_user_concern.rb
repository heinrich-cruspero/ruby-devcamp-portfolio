# UpperCamelCase. Capital are mapped with filename '_'
module CurrentUserConcern
  # if concern need to extend activesupport concern
  extend ActiveSupport::Concern

  def current_user
    # OpenStruct mimics User model or any Model at that
    super || OpenStruct.new(name: "Guest User",
                            first_name: "Guest",
                            lastname: "User",
                            email: "test@test.com")
  end
end