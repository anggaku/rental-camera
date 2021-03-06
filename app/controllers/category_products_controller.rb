class CategoryProductsController < ApplicationController
  before_action :set_category_product, only: [:show, :edit, :update, :destroy]

  # GET /category_products
  # GET /category_products.json
  def index
    @category_products = CategoryProduct.all
  end

  # GET /category_products/1
  # GET /category_products/1.json
  def show
    @cameras = @category_product.cameras.all.paginate(:page => params[:page], :per_page => 9)
    @lensas = @category_product.lensas.all.paginate(:page => params[:page], :per_page => 9)
    @peralatans = @category_product.peralatans.all.paginate(:page => params[:page], :per_page => 9)
    if params[:type_camera_id]
      @cameras = @category_product.cameras.where(type_camera_id: params[:type_camera_id]).order("created_at ASC").paginate(:page => params[:page], :per_page => 9)
    elsif params[:merk_lensa_id]
      @lensas = @category_product.lensas.where(merk_lensa_id: params[:merk_lensa_id]).order("created_at ASC").paginate(:page => params[:page], :per_page => 9)
    elsif params[:aksesori_id]
      @accessories = @category_product.accessories.where(aksesori_id: params[:aksesori_id]).order("created_at ASC").paginate(:page => params[:page], :per_page => 9)
    end
  end

  # GET /category_products/new
  def new
    @category_product = CategoryProduct.new
  end

  # GET /category_products/1/edit
  def edit
  end

  # POST /category_products
  # POST /category_products.json
  def create
    @category_product = CategoryProduct.new(category_product_params)

    respond_to do |format|
      if @category_product.save
        format.html { redirect_to @category_product, notice: 'Category product was successfully created.' }
        format.json { render :show, status: :created, location: @category_product }
      else
        format.html { render :new }
        format.json { render json: @category_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_products/1
  # PATCH/PUT /category_products/1.json
  def update
    respond_to do |format|
      if @category_product.update(category_product_params)
        format.html { redirect_to @category_product, notice: 'Category product was successfully updated.' }
        format.json { render :show, status: :ok, location: @category_product }
      else
        format.html { render :edit }
        format.json { render json: @category_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_products/1
  # DELETE /category_products/1.json
  def destroy
    @category_product.destroy
    respond_to do |format|
      format.html { redirect_to category_products_url, notice: 'Category product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_product
      @category_product = CategoryProduct.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_product_params
      params.require(:category_product).permit(:name)
    end
end
