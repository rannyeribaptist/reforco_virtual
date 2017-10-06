class Backoffice::ProfilesController < BackofficeController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  def new
    @profile = Profile.new
  end

  def show
  end

  def edit
  end

  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to ([:backoffice, @profile]), notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: ([:backoffice, @profile]) }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to ([:backoffice, @profile]), notice: 'Student was successfully updated.' }
        format.json { render json: { message: "ok" }, status: :ok, location: ([:backoffice, @profile]) }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to backoffice_profile_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find_by(user_id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:avatar, :school, :responsible_name, :responsible_email, :responsible_phone, :user_id)
    end
end
