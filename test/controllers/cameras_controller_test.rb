require 'test_helper'

class CamerasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @camera = cameras(:one)
  end

  test "should get index" do
    get cameras_url
    assert_response :success
  end

  test "should get new" do
    get new_camera_url
    assert_response :success
  end

  test "should create camera" do
    assert_difference('Camera.count') do
      post cameras_url, params: { camera: { availability_product_id: @camera.availability_product_id, camera_description: @camera.camera_description, camera_kelengkapan: @camera.camera_kelengkapan, category_product_id: @camera.category_product_id, image1: @camera.image1, image2: @camera.image2, image3: @camera.image3, image4: @camera.image4, image5: @camera.image5, merk_camera_id: @camera.merk_camera_id, name: @camera.name, price: @camera.price, review_video: @camera.review_video, slug: @camera.slug, type_camera_id: @camera.type_camera_id } }
    end

    assert_redirected_to camera_url(Camera.last)
  end

  test "should show camera" do
    get camera_url(@camera)
    assert_response :success
  end

  test "should get edit" do
    get edit_camera_url(@camera)
    assert_response :success
  end

  test "should update camera" do
    patch camera_url(@camera), params: { camera: { availability_product_id: @camera.availability_product_id, camera_description: @camera.camera_description, camera_kelengkapan: @camera.camera_kelengkapan, category_product_id: @camera.category_product_id, image1: @camera.image1, image2: @camera.image2, image3: @camera.image3, image4: @camera.image4, image5: @camera.image5, merk_camera_id: @camera.merk_camera_id, name: @camera.name, price: @camera.price, review_video: @camera.review_video, slug: @camera.slug, type_camera_id: @camera.type_camera_id } }
    assert_redirected_to camera_url(@camera)
  end

  test "should destroy camera" do
    assert_difference('Camera.count', -1) do
      delete camera_url(@camera)
    end

    assert_redirected_to cameras_url
  end
end
