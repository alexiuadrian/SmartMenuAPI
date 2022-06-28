class Api::BaseController < ActionController::Base
  protect_from_forgery unless: -> { request.format.json? }
end