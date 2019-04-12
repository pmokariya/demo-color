class PrimaryColorsController < ApplicationController
  before_action :set_primary_color, only: [:show, :edit, :update, :destroy]

  # GET /primary_colors
  # GET /primary_colors.json
  def index
    @primary_colors = PrimaryColor.all
  end

  # GET /primary_colors/1
  # GET /primary_colors/1.json
  def show
  end

  # GET /primary_colors/new
  def new
    @primary_color = PrimaryColor.new
  end

  # GET /primary_colors/1/edit
  def edit
  end

  # POST /primary_colors
  # POST /primary_colors.json
  def create
    @primary_color = PrimaryColor.new(primary_color_params)

    respond_to do |format|
      if @primary_color.save
        format.html { redirect_to @primary_color, notice: 'Primary color was successfully created.' }
        format.json { render :show, status: :created, location: @primary_color }
      else
        format.html { render :new }
        format.json { render json: @primary_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /primary_colors/1
  # PATCH/PUT /primary_colors/1.json
  def update
    respond_to do |format|
      if @primary_color.update(primary_color_params)
        format.html { redirect_to @primary_color, notice: 'Primary color was successfully updated.' }
        format.json { render :show, status: :ok, location: @primary_color }
      else
        format.html { render :edit }
        format.json { render json: @primary_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /primary_colors/1
  # DELETE /primary_colors/1.json
  def destroy
    @primary_color.destroy
    respond_to do |format|
      format.html { redirect_to primary_colors_url, notice: 'Primary color was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_primary_color
      @primary_color = PrimaryColor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def primary_color_params
      params.require(:primary_color).permit(:name, :hash_code)
    end
end
