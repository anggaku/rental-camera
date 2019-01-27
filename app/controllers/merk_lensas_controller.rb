class MerkLensasController < ApplicationController
  before_action :set_merk_lensa, only: [:show, :edit, :update, :destroy]

  # GET /merk_lensas
  # GET /merk_lensas.json
  def index
    @merk_lensas = MerkLensa.all
  end

  # GET /merk_lensas/1
  # GET /merk_lensas/1.json
  def show
    @products = @merk_lensa.products.order("created_at ASC").paginate(:page => params[:page], :per_page => 9)
  end

  # GET /merk_lensas/new
  def new
    @merk_lensa = MerkLensa.new
  end

  # GET /merk_lensas/1/edit
  def edit
  end

  # POST /merk_lensas
  # POST /merk_lensas.json
  def create
    @merk_lensa = MerkLensa.new(merk_lensa_params)

    respond_to do |format|
      if @merk_lensa.save
        format.html { redirect_to @merk_lensa, notice: 'Merk lensa was successfully created.' }
        format.json { render :show, status: :created, location: @merk_lensa }
      else
        format.html { render :new }
        format.json { render json: @merk_lensa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /merk_lensas/1
  # PATCH/PUT /merk_lensas/1.json
  def update
    respond_to do |format|
      if @merk_lensa.update(merk_lensa_params)
        format.html { redirect_to @merk_lensa, notice: 'Merk lensa was successfully updated.' }
        format.json { render :show, status: :ok, location: @merk_lensa }
      else
        format.html { render :edit }
        format.json { render json: @merk_lensa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /merk_lensas/1
  # DELETE /merk_lensas/1.json
  def destroy
    @merk_lensa.destroy
    respond_to do |format|
      format.html { redirect_to merk_lensas_url, notice: 'Merk lensa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_merk_lensa
      @merk_lensa = MerkLensa.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def merk_lensa_params
      params.require(:merk_lensa).permit(:name, :slug)
    end
end
