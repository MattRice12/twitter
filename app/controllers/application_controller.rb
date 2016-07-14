class ApplicationController < ActionController::Base
  # protect_from_forgery with: :null_session  <= might need this one

  protect_from_forgery with: :exception
end
