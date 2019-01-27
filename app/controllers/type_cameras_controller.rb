class TypeCamerasController < ApplicationController
  before_action :set_type_camera, only: [:show, :edit, :update, :destroy]

  # GET /type_cameras
  # GET /type_cameras.json
  def index
    @type_cameras = TypeCamera.all
  end
  # GET /type_cameras/1
  # GET /type_cameras/1.json
  def show
    @products = @type_camera.products.order("created_at ASC").paginate(:page => params[:page], :per_page => 9)
  end

  # GET /type_cameras/new
  def new
    @type_camera = TypeCamera.new
  end

  # GET /type_cameras/1/edit
  def edit
  end

  # POST /type_cameras
  # POST /type_cameras.json
  def create
    @type_camera = TypeCamera.new(type_camera_params)

    respond_to do |format|
      if @type_camera.save
        format.html { redirect_to @type_camera, notice: 'Type camera was successfully created.' }
        format.json { render :show, status: :created, location: @type_camera }
      else
        format.html { render :new }
        format.json { render json: @type_camera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_cameras/1
  # PATCH/PUT /type_cameras/1.json
  def update
    respond_to do |format|
      if @type_camera.update(type_camera_params)
        format.html { redirect_to @type_camera, notice: 'Type camera was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_camera }
      else
        format.html { render :edit }
        format.json { render json: @type_camera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_cameras/1
  # DELETE /type_cameras/1.json
  def destroy
    @type_camera.destroy
    respond_to do |format|
      format.html { redirect_to type_cameras_url, notice: 'Type camera was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_camera
      @type_camera = TypeCamera.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_camera_params
      params.require(:type_camera).permit(:name)
    end
end
