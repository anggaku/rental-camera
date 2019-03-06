require 'test_helper'

class AccessoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accessory = accessories(:one)
  end

  test "should get index" do
    get accessories_url
    assert_response :success
  end

  test "should get new" do
    get new_accessory_url
    assert_response :success
  end

  test "should create accessory" do
    assert_difference('Accessorie.count') do
      post accessories_url, params: { accessory: { accessorie_description: @accessory.accessorie_description, accessorie_kelengkapan: @accessory.accessorie_kelengkapan, aksesori_id: @accessory.aksesori_id, availability_product_id: @accessory.availability_product_id, category_product_id: @accessory.category_product_id, image1: @accessory.image1, image2: @accessory.image2, image3: @accessory.image3, image4: @accessory.image4, image5: @accessory.image5, name: @accessory.name, price: @accessory.price, review_video: @accessory.review_video, slug: @accessory.slug } }
    end

    assert_redirected_to accessory_url(Accessorie.last)
  end

  test "should show accessory" do
    get accessory_url(@accessory)
    assert_response :success
  end

  test "should get edit" do
    get edit_accessory_url(@accessory)
    assert_response :success
  end

  test "should update accessory" do
    patch accessory_url(@accessory), params: { accessory: { accessorie_description: @accessory.accessorie_description, accessorie_kelengkapan: @accessory.accessorie_kelengkapan, aksesori_id: @accessory.aksesori_id, availability_product_id: @accessory.availability_product_id, category_product_id: @accessory.category_product_id, image1: @accessory.image1, image2: @accessory.image2, image3: @accessory.image3, image4: @accessory.image4, image5: @accessory.image5, name: @accessory.name, price: @accessory.price, review_video: @accessory.review_video, slug: @accessory.slug } }
    assert_redirected_to accessory_url(@accessory)
  end

  test "should destroy accessory" do
    assert_difference('Accessorie.count', -1) do
      delete accessory_url(@accessory)
    end

    assert_redirected_to accessories_url
  end
end
