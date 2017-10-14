class Backoffice::ConfigsController < BackofficeController
  before_action :set_config, only: [:show, :edit, :update, :destroy]

  # GET /configs
  # GET /configs.json
  def index
    @configs = Config.all
  end

  # GET /configs/1
  # GET /configs/1.json
  def show
  end

  # GET /configs/new
  def new
    @config = Config.new
    @config.grades.build
    @config.disciplines.build
  end

  # GET /configs/1/edit
  def edit
  end

  # POST /configs
  # POST /configs.json
  def create
    @config = Config.new(config_params)

    respond_to do |format|
      if @config.save
        format.html { redirect_to [:backoffice, @config], notice: 'Config was successfully created.' }
        format.json { render :show, status: :created, location: [:backoffice, @config] }
      else
        format.html { render :new }
        format.json { render json: [:backoffice, @config.errors], status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /configs/1
  # PATCH/PUT /configs/1.json
  def update
    respond_to do |format|
      if @config.update(config_params)
        format.html { redirect_to [:backoffice, @config], notice: 'Config was successfully updated.' }
        format.json { render json: nil, status: :ok, location: [:backoffice, @config] }
      else
        format.html { render :edit }
        format.json { render json: [:backoffice, @config.errors], status: :unprocessable_entity }
      end
    end
  end

  # DELETE /configs/1
  # DELETE /configs/1.json
  def destroy
    @config.destroy
    respond_to do |format|
      format.html { redirect_to backoffice_configs_url, notice: 'Config was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def destroy_grade
    Grade.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to backoffice_config_path(1), notice: 'Excluído.' }
      format.json { head :no_content }
    end
  end

  def destroy_discipline
    Discipline.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to backoffice_config_path(1), notice: 'Excluído.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_config
      @config = Config.first
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def config_params
      params.require(:config).permit(:grades_attributes => [:name, :id, :_destroy], :disciplines_attributes => [:name, :id, :_destroy])
    end
end
