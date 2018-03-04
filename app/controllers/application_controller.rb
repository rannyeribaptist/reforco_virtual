class ApplicationController < ActionController::Base
  helper_method :xeditable?
  protect_from_forgery with: :exception

  def xeditable?(a)
    true
  end

  private

  def after_sign_out_path_for(resource)
    ProfileSession.where(:profile_id => cookies[:profile]).first.destroy if not cookies[:profile].empty?
    root_path
  end
end
