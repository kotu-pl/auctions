class ApplicationController < ActionController::Base
  protect_from_forgery

  def pathx
    request.fullpath
  end
end
