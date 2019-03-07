class PeralatansController < ApplicationController
  before_action :set_peralatan, only: [:show, :edit, :update, :destroy]

  # GET /peralatans
  # GET /peralatans.json
  def index
    @peralatans = Peralatan.all
  end

  # GET /peralatans/1
  # GET /peralatans/1.json
  def show
    @peralatan = Peralatan.friendly.find(params[:id])
  end

  # GET /peralatans/new
  def new
    @peralatan = Peralatan.new
  end

  # GET /peralatans/1/edit
  def edit
  end

  # POST /peralatans
  # POST /peralatans.json
  def create
    @peralatan = Peralatan.new(peralatan_params)

    respond_to do |format|
      if @peralatan.save
        format.html { redirect_to @peralatan, notice: 'Peralatan was successfully created.' }
        format.json { render :show, status: :created, location: @peralatan }
      else
        format.html { render :new }
        format.json { render json: @peralatan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /peralatans/1
  # PATCH/PUT /peralatans/1.json
  def update
    respond_to do |format|
      if @peralatan.update(peralatan_params)
        format.html { redirect_to @peralatan, notice: 'Peralatan was successfully updated.' }
        format.json { render :show, status: :ok, location: @peralatan }
      else
        format.html { render :edit }
        format.json { render json: @peralatan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peralatans/1
  # DELETE /peralatans/1.json
  def destroy
    @peralatan.destroy
    respond_to do |format|
      format.html { redirect_to peralatans_url, notice: 'Peralatan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peralatan
      @peralatan = Peralatan.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def peralatan_params
      params.require(:peralatan).permit(:category_product_id, :availability_product_id, :aksesori_id, :name, :slug, :peralatan_description, :peralatan_kelengkapan, :price, :review_video, :image1, :image2, :image3, :image4, :image5)
    end
end
