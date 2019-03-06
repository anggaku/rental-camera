class AksesorisController < ApplicationController
  before_action :set_aksesori, only: [:show, :edit, :update, :destroy]

  # GET /aksesoris
  # GET /aksesoris.json
  def index
    @aksesoris = Aksesori.all
  end

  # GET /aksesoris/1
  # GET /aksesoris/1.json
  def show
    @accessories = @aksesori.accessories.order("created_at ASC").paginate(:page => params[:page], :per_page => 9)
  end

  # GET /aksesoris/new
  def new
    @aksesori = Aksesori.new
  end

  # GET /aksesoris/1/edit
  def edit
  end

  # POST /aksesoris
  # POST /aksesoris.json
  def create
    @aksesori = Aksesori.new(aksesori_params)

    respond_to do |format|
      if @aksesori.save
        format.html { redirect_to @aksesori, notice: 'Aksesori was successfully created.' }
        format.json { render :show, status: :created, location: @aksesori }
      else
        format.html { render :new }
        format.json { render json: @aksesori.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aksesoris/1
  # PATCH/PUT /aksesoris/1.json
  def update
    respond_to do |format|
      if @aksesori.update(aksesori_params)
        format.html { redirect_to @aksesori, notice: 'Aksesori was successfully updated.' }
        format.json { render :show, status: :ok, location: @aksesori }
      else
        format.html { render :edit }
        format.json { render json: @aksesori.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aksesoris/1
  # DELETE /aksesoris/1.json
  def destroy
    @aksesori.destroy
    respond_to do |format|
      format.html { redirect_to aksesoris_url, notice: 'Aksesori was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aksesori
      @aksesori = Aksesori.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aksesori_params
      params.require(:aksesori).permit(:name, :slug)
    end
end
