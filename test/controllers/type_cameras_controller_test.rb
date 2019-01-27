require 'test_helper'

class TypeCamerasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_camera = type_cameras(:one)
  end

  test "should get index" do
    get type_cameras_url
    assert_response :success
  end

  test "should get new" do
    get new_type_camera_url
    assert_response :success
  end

  test "should create type_camera" do
    assert_difference('TypeCamera.count') do
      post type_cameras_url, params: { type_camera: { name: @type_camera.name } }
    end

    assert_redirected_to type_camera_url(TypeCamera.last)
  end

  test "should show type_camera" do
    get type_camera_url(@type_camera)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_camera_url(@type_camera)
    assert_response :success
  end

  test "should update type_camera" do
    patch type_camera_url(@type_camera), params: { type_camera: { name: @type_camera.name } }
    assert_redirected_to type_camera_url(@type_camera)
  end

  test "should destroy type_camera" do
    assert_difference('TypeCamera.count', -1) do
      delete type_camera_url(@type_camera)
    end

    assert_redirected_to type_cameras_url
  end
end
