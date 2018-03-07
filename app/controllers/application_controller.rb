class ApplicationController < ActionController::Base
  helper_method :xeditable?
  protect_from_forgery with: :exception

  def xeditable?(a)
    true
  end

  private

  def after_sign_out_path_for(resource)    
    ProfileSession.where(:profile_id => cookies[:profile]).first.destroy if cookies[:profile].present?
    cookies.delete(:profile) if cookies[:profile].present?    
    root_path
  end
end
