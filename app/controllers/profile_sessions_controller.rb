class ProfileSessionsController < ApplicationController
  before_action :set_profile_session, only: [:show, :edit, :update, :destroy]

  # GET /profile_sessions
  # GET /profile_sessions.json
  def index
    @profile_sessions = ProfileSession.all
  end

  # GET /profile_sessions/1
  # GET /profile_sessions/1.json
  def show
  end

  # GET /profile_sessions/new
  def new
    @profile_session = ProfileSession.new
  end

  # GET /profile_sessions/1/edit
  def edit
  end

  # POST /profile_sessions
  # POST /profile_sessions.json
  def create
    @profile_session = ProfileSession.new(profile_session_params)

    respond_to do |format|
      if @profile_session.save
        format.html { redirect_to '/', notice: 'Profile session was successfully created.' }
        format.json { render :show, status: :created, location: @profile_session }
      else
        format.html { render :new }
        format.json { render json: @profile_session.errors, status: :unprocessable_entity }
      end
    end
    cookies[:profile] = @profile_session.profile_id
  end

  # PATCH/PUT /profile_sessions/1
  # PATCH/PUT /profile_sessions/1.json
  def update
    respond_to do |format|
      if @profile_session.update(profile_session_params)
        format.html { redirect_to @profile_session, notice: 'Profile session was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile_session }
      else
        format.html { render :edit }
        format.json { render json: @profile_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profile_sessions/1
  # DELETE /profile_sessions/1.json
  def destroy
    @profile_session.destroy
    respond_to do |format|
      format.html { redirect_to profile_sessions_url, notice: 'Profile session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile_session
      @profile_session = ProfileSession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_session_params
      params.require(:profile_session).permit(:profile_id, :user_id)
    end
end
