class Backoffice::DashboardController < BackofficeController
  def index    
    if not cookies[:profile].present? and current_user.role == "student"
      redirect_to profile_sessions_path
    end
  end
end
