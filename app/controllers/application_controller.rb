class ApplicationController < ActionController::Base
  include DeviseWhitelist # add additional params in a module for devise methods
  include SetSource
  include CurrentUserConcern
end
