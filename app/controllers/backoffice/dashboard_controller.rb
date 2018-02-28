class Backoffice::DashboardController < BackofficeController
  def index    
    if current_user.profiles.empty?
      redirect_to new_backoffice_profile_path
    end
  end
end
