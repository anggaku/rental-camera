require 'test_helper'

class LensasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lensa = lensas(:one)
  end

  test "should get index" do
    get lensas_url
    assert_response :success
  end

  test "should get new" do
    get new_lensa_url
    assert_response :success
  end

  test "should create lensa" do
    assert_difference('Lensa.count') do
      post lensas_url, params: { lensa: { availability_product_id: @lensa.availability_product_id, category_product_id: @lensa.category_product_id, image1: @lensa.image1, image2: @lensa.image2, image3: @lensa.image3, image4: @lensa.image4, image5: @lensa.image5, lensa_description: @lensa.lensa_description, lensa_kelengkapan: @lensa.lensa_kelengkapan, merk_lensa_id: @lensa.merk_lensa_id, name: @lensa.name, price: @lensa.price, review_video: @lensa.review_video, slug: @lensa.slug } }
    end

    assert_redirected_to lensa_url(Lensa.last)
  end

  test "should show lensa" do
    get lensa_url(@lensa)
    assert_response :success
  end

  test "should get edit" do
    get edit_lensa_url(@lensa)
    assert_response :success
  end

  test "should update lensa" do
    patch lensa_url(@lensa), params: { lensa: { availability_product_id: @lensa.availability_product_id, category_product_id: @lensa.category_product_id, image1: @lensa.image1, image2: @lensa.image2, image3: @lensa.image3, image4: @lensa.image4, image5: @lensa.image5, lensa_description: @lensa.lensa_description, lensa_kelengkapan: @lensa.lensa_kelengkapan, merk_lensa_id: @lensa.merk_lensa_id, name: @lensa.name, price: @lensa.price, review_video: @lensa.review_video, slug: @lensa.slug } }
    assert_redirected_to lensa_url(@lensa)
  end

  test "should destroy lensa" do
    assert_difference('Lensa.count', -1) do
      delete lensa_url(@lensa)
    end

    assert_redirected_to lensas_url
  end
end
