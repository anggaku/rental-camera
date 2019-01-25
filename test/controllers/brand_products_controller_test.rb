require 'test_helper'

class BrandProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brand_product = brand_products(:one)
  end

  test "should get index" do
    get brand_products_url
    assert_response :success
  end

  test "should get new" do
    get new_brand_product_url
    assert_response :success
  end

  test "should create brand_product" do
    assert_difference('BrandProduct.count') do
      post brand_products_url, params: { brand_product: { name: @brand_product.name } }
    end

    assert_redirected_to brand_product_url(BrandProduct.last)
  end

  test "should show brand_product" do
    get brand_product_url(@brand_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_brand_product_url(@brand_product)
    assert_response :success
  end

  test "should update brand_product" do
    patch brand_product_url(@brand_product), params: { brand_product: { name: @brand_product.name } }
    assert_redirected_to brand_product_url(@brand_product)
  end

  test "should destroy brand_product" do
    assert_difference('BrandProduct.count', -1) do
      delete brand_product_url(@brand_product)
    end

    assert_redirected_to brand_products_url
  end
end
