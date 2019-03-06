require 'test_helper'

class MerkCamerasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @merk_camera = merk_cameras(:one)
  end

  test "should get index" do
    get merk_cameras_url
    assert_response :success
  end

  test "should get new" do
    get new_merk_camera_url
    assert_response :success
  end

  test "should create merk_camera" do
    assert_difference('MerkCamera.count') do
      post merk_cameras_url, params: { merk_camera: { name: @merk_camera.name, slug: @merk_camera.slug } }
    end

    assert_redirected_to merk_camera_url(MerkCamera.last)
  end

  test "should show merk_camera" do
    get merk_camera_url(@merk_camera)
    assert_response :success
  end

  test "should get edit" do
    get edit_merk_camera_url(@merk_camera)
    assert_response :success
  end

  test "should update merk_camera" do
    patch merk_camera_url(@merk_camera), params: { merk_camera: { name: @merk_camera.name, slug: @merk_camera.slug } }
    assert_redirected_to merk_camera_url(@merk_camera)
  end

  test "should destroy merk_camera" do
    assert_difference('MerkCamera.count', -1) do
      delete merk_camera_url(@merk_camera)
    end

    assert_redirected_to merk_cameras_url
  end
end
