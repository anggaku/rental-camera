require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { availability_product: @product.availability_product, brand_product_id: @product.brand_product_id, category_product_id: @product.category_product_id, description: @product.description, image10: @product.image10, image1: @product.image1, image2: @product.image2, image3: @product.image3, image4: @product.image4, image5: @product.image5, image6: @product.image6, image7: @product.image7, image8: @product.image8, image9: @product.image9, kelengkapan: @product.kelengkapan, name: @product.name, price: @product.price, review_video: @product.review_video } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { availability_product: @product.availability_product, brand_product_id: @product.brand_product_id, category_product_id: @product.category_product_id, description: @product.description, image10: @product.image10, image1: @product.image1, image2: @product.image2, image3: @product.image3, image4: @product.image4, image5: @product.image5, image6: @product.image6, image7: @product.image7, image8: @product.image8, image9: @product.image9, kelengkapan: @product.kelengkapan, name: @product.name, price: @product.price, review_video: @product.review_video } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
