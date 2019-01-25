class AvailabilityProductsController < ApplicationController
  before_action :set_availability_product, only: [:show, :edit, :update, :destroy]

  # GET /availability_products
  # GET /availability_products.json
  def index
    @availability_products = AvailabilityProduct.all
  end

  # GET /availability_products/1
  # GET /availability_products/1.json
  def show
    @availability_product = AvailabilityProduct.friendly.find(params[:id])
  end

  # GET /availability_products/new
  def new
    @availability_product = AvailabilityProduct.new
  end

  # GET /availability_products/1/edit
  def edit
  end

  # POST /availability_products
  # POST /availability_products.json
  def create
    @availability_product = AvailabilityProduct.new(availability_product_params)

    respond_to do |format|
      if @availability_product.save
        format.html { redirect_to @availability_product, notice: 'Availability product was successfully created.' }
        format.json { render :show, status: :created, location: @availability_product }
      else
        format.html { render :new }
        format.json { render json: @availability_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /availability_products/1
  # PATCH/PUT /availability_products/1.json
  def update
    respond_to do |format|
      if @availability_product.update(availability_product_params)
        format.html { redirect_to @availability_product, notice: 'Availability product was successfully updated.' }
        format.json { render :show, status: :ok, location: @availability_product }
      else
        format.html { render :edit }
        format.json { render json: @availability_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /availability_products/1
  # DELETE /availability_products/1.json
  def destroy
    @availability_product.destroy
    respond_to do |format|
      format.html { redirect_to availability_products_url, notice: 'Availability product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_availability_product
      @availability_product = AvailabilityProduct.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def availability_product_params
      params.require(:availability_product).permit(:name)
    end
end
