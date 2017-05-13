class AhmedsController < ApplicationController
  before_action :set_ahmed, only: [:show, :edit, :update, :destroy]

  # GET /ahmeds
  # GET /ahmeds.json
  def index
    @ahmeds = Ahmed.all
  end

  # GET /ahmeds/1
  # GET /ahmeds/1.json
  def show
  end

  # GET /ahmeds/new
  def new
    @ahmed = Ahmed.new
  end

  # GET /ahmeds/1/edit
  def edit
  end

  # POST /ahmeds
  # POST /ahmeds.json
  def create
    @ahmed = Ahmed.new(ahmed_params)

    respond_to do |format|
      if @ahmed.save
        format.html { redirect_to @ahmed, notice: 'Ahmed was successfully created.' }
        format.json { render :show, status: :created, location: @ahmed }
      else
        format.html { render :new }
        format.json { render json: @ahmed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ahmeds/1
  # PATCH/PUT /ahmeds/1.json
  def update
    respond_to do |format|
      if @ahmed.update(ahmed_params)
        format.html { redirect_to @ahmed, notice: 'Ahmed was successfully updated.' }
        format.json { render :show, status: :ok, location: @ahmed }
      else
        format.html { render :edit }
        format.json { render json: @ahmed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ahmeds/1
  # DELETE /ahmeds/1.json
  def destroy
    @ahmed.destroy
    respond_to do |format|
      format.html { redirect_to ahmeds_url, notice: 'Ahmed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ahmed
      @ahmed = Ahmed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ahmed_params
      params.require(:ahmed).permit(:name)
    end
end
