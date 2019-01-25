require 'test_helper'

class AvailabilityProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @availability_product = availability_products(:one)
  end

  test "should get index" do
    get availability_products_url
    assert_response :success
  end

  test "should get new" do
    get new_availability_product_url
    assert_response :success
  end

  test "should create availability_product" do
    assert_difference('AvailabilityProduct.count') do
      post availability_products_url, params: { availability_product: { name: @availability_product.name } }
    end

    assert_redirected_to availability_product_url(AvailabilityProduct.last)
  end

  test "should show availability_product" do
    get availability_product_url(@availability_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_availability_product_url(@availability_product)
    assert_response :success
  end

  test "should update availability_product" do
    patch availability_product_url(@availability_product), params: { availability_product: { name: @availability_product.name } }
    assert_redirected_to availability_product_url(@availability_product)
  end

  test "should destroy availability_product" do
    assert_difference('AvailabilityProduct.count', -1) do
      delete availability_product_url(@availability_product)
    end

    assert_redirected_to availability_products_url
  end
end
