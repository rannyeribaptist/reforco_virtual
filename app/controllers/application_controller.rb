class ApplicationController < ActionController::Base
  helper_method :xeditable?
  protect_from_forgery with: :exception

  def xeditable?(a)
    true
  end
end
