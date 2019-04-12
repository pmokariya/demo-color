class SecondaryColorsController < ApplicationController
  before_action :set_secondary_color, only: [:show, :edit, :update, :destroy]

  # GET /secondary_colors
  # GET /secondary_colors.json
  def index
    @secondary_colors = SecondaryColor.all
  end

  # GET /secondary_colors/1
  # GET /secondary_colors/1.json
  def show
  end

  # GET /secondary_colors/new
  def new
    @secondary_color = SecondaryColor.new
  end

  # GET /secondary_colors/1/edit
  def edit
  end

  # POST /secondary_colors
  # POST /secondary_colors.json
  def create
    @secondary_color = SecondaryColor.new(secondary_color_params)

    respond_to do |format|
      if @secondary_color.save
        format.html { redirect_to @secondary_color, notice: 'Secondary color was successfully created.' }
        format.json { render :show, status: :created, location: @secondary_color }
      else
        format.html { render :new }
        format.json { render json: @secondary_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /secondary_colors/1
  # PATCH/PUT /secondary_colors/1.json
  def update
    respond_to do |format|
      if @secondary_color.update(secondary_color_params)
        format.html { redirect_to @secondary_color, notice: 'Secondary color was successfully updated.' }
        format.json { render :show, status: :ok, location: @secondary_color }
      else
        format.html { render :edit }
        format.json { render json: @secondary_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secondary_colors/1
  # DELETE /secondary_colors/1.json
  def destroy
    @secondary_color.destroy
    respond_to do |format|
      format.html { redirect_to secondary_colors_url, notice: 'Secondary color was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_secondary_color
      @secondary_color = SecondaryColor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def secondary_color_params
      params.require(:secondary_color).permit(:name, :hash_code, :primary_color_id)
    end
end
