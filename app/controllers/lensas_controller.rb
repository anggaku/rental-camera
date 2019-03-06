class LensasController < ApplicationController
  before_action :set_lensa, only: [:show, :edit, :update, :destroy]

  # GET /lensas
  # GET /lensas.json
  def index
    @lensas = Lensa.all
  end

  # GET /lensas/1
  # GET /lensas/1.json
  def show
    @lensa = Lensa.friendly.find(params[:id])
  end

  # GET /lensas/new
  def new
    @lensa = Lensa.new
  end

  # GET /lensas/1/edit
  def edit
  end

  # POST /lensas
  # POST /lensas.json
  def create
    @lensa = Lensa.new(lensa_params)

    respond_to do |format|
      if @lensa.save
        format.html { redirect_to @lensa, notice: 'Lensa was successfully created.' }
        format.json { render :show, status: :created, location: @lensa }
      else
        format.html { render :new }
        format.json { render json: @lensa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lensas/1
  # PATCH/PUT /lensas/1.json
  def update
    respond_to do |format|
      if @lensa.update(lensa_params)
        format.html { redirect_to @lensa, notice: 'Lensa was successfully updated.' }
        format.json { render :show, status: :ok, location: @lensa }
      else
        format.html { render :edit }
        format.json { render json: @lensa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lensas/1
  # DELETE /lensas/1.json
  def destroy
    @lensa.destroy
    respond_to do |format|
      format.html { redirect_to lensas_url, notice: 'Lensa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lensa
      @lensa = Lensa.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lensa_params
      params.require(:lensa).permit(:category_product_id, :merk_lensa_id, :availability_product_id, :name, :slug, :lensa_description, :lensa_kelengkapan, :price, :review_video, :image1, :image2, :image3, :image4, :image5)
    end
end
