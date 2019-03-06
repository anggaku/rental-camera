class MerkCamerasController < ApplicationController
  before_action :set_merk_camera, only: [:show, :edit, :update, :destroy]

  # GET /merk_cameras
  # GET /merk_cameras.json
  def index
    @merk_cameras = MerkCamera.all
  end

  # GET /merk_cameras/1
  # GET /merk_cameras/1.json
  def show
    @merk_camera = MerkCamera.friendly.find(params[:id])
  end

  # GET /merk_cameras/new
  def new
    @merk_camera = MerkCamera.new
  end

  # GET /merk_cameras/1/edit
  def edit
  end

  # POST /merk_cameras
  # POST /merk_cameras.json
  def create
    @merk_camera = MerkCamera.new(merk_camera_params)

    respond_to do |format|
      if @merk_camera.save
        format.html { redirect_to @merk_camera, notice: 'Merk camera was successfully created.' }
        format.json { render :show, status: :created, location: @merk_camera }
      else
        format.html { render :new }
        format.json { render json: @merk_camera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /merk_cameras/1
  # PATCH/PUT /merk_cameras/1.json
  def update
    respond_to do |format|
      if @merk_camera.update(merk_camera_params)
        format.html { redirect_to @merk_camera, notice: 'Merk camera was successfully updated.' }
        format.json { render :show, status: :ok, location: @merk_camera }
      else
        format.html { render :edit }
        format.json { render json: @merk_camera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /merk_cameras/1
  # DELETE /merk_cameras/1.json
  def destroy
    @merk_camera.destroy
    respond_to do |format|
      format.html { redirect_to merk_cameras_url, notice: 'Merk camera was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_merk_camera
      @merk_camera = MerkCamera.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def merk_camera_params
      params.require(:merk_camera).permit(:name, :slug)
    end
end
