class BrandProductsController < ApplicationController
  before_action :set_brand_product, only: [:show, :edit, :update, :destroy]

  # GET /brand_products
  # GET /brand_products.json
  def index
    @brand_products = BrandProduct.all
  end

  # GET /brand_products/1
  # GET /brand_products/1.json
  def show
    @brand_product = BrandProduct.friendly.find(params[:id])
  end

  # GET /brand_products/new
  def new
    @brand_product = BrandProduct.new
  end

  # GET /brand_products/1/edit
  def edit
  end

  # POST /brand_products
  # POST /brand_products.json
  def create
    @brand_product = BrandProduct.new(brand_product_params)

    respond_to do |format|
      if @brand_product.save
        format.html { redirect_to @brand_product, notice: 'Brand product was successfully created.' }
        format.json { render :show, status: :created, location: @brand_product }
      else
        format.html { render :new }
        format.json { render json: @brand_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brand_products/1
  # PATCH/PUT /brand_products/1.json
  def update
    respond_to do |format|
      if @brand_product.update(brand_product_params)
        format.html { redirect_to @brand_product, notice: 'Brand product was successfully updated.' }
        format.json { render :show, status: :ok, location: @brand_product }
      else
        format.html { render :edit }
        format.json { render json: @brand_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brand_products/1
  # DELETE /brand_products/1.json
  def destroy
    @brand_product.destroy
    respond_to do |format|
      format.html { redirect_to brand_products_url, notice: 'Brand product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brand_product
      @brand_product = BrandProduct.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brand_product_params
      params.require(:brand_product).permit(:name)
    end
end
