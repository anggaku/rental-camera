require 'test_helper'

class PeralatansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @peralatan = peralatans(:one)
  end

  test "should get index" do
    get peralatans_url
    assert_response :success
  end

  test "should get new" do
    get new_peralatan_url
    assert_response :success
  end

  test "should create peralatan" do
    assert_difference('Peralatan.count') do
      post peralatans_url, params: { peralatan: { aksesori_id: @peralatan.aksesori_id, availability_product_id: @peralatan.availability_product_id, category_product_id: @peralatan.category_product_id, image1: @peralatan.image1, image2: @peralatan.image2, image3: @peralatan.image3, image4: @peralatan.image4, image5: @peralatan.image5, name: @peralatan.name, peralatan_description: @peralatan.peralatan_description, peralatan_kelengkapan: @peralatan.peralatan_kelengkapan, price: @peralatan.price, review_video: @peralatan.review_video, slug: @peralatan.slug } }
    end

    assert_redirected_to peralatan_url(Peralatan.last)
  end

  test "should show peralatan" do
    get peralatan_url(@peralatan)
    assert_response :success
  end

  test "should get edit" do
    get edit_peralatan_url(@peralatan)
    assert_response :success
  end

  test "should update peralatan" do
    patch peralatan_url(@peralatan), params: { peralatan: { aksesori_id: @peralatan.aksesori_id, availability_product_id: @peralatan.availability_product_id, category_product_id: @peralatan.category_product_id, image1: @peralatan.image1, image2: @peralatan.image2, image3: @peralatan.image3, image4: @peralatan.image4, image5: @peralatan.image5, name: @peralatan.name, peralatan_description: @peralatan.peralatan_description, peralatan_kelengkapan: @peralatan.peralatan_kelengkapan, price: @peralatan.price, review_video: @peralatan.review_video, slug: @peralatan.slug } }
    assert_redirected_to peralatan_url(@peralatan)
  end

  test "should destroy peralatan" do
    assert_difference('Peralatan.count', -1) do
      delete peralatan_url(@peralatan)
    end

    assert_redirected_to peralatans_url
  end
end
