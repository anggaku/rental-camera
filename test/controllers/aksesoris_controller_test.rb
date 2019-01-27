require 'test_helper'

class AksesorisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aksesori = aksesoris(:one)
  end

  test "should get index" do
    get aksesoris_url
    assert_response :success
  end

  test "should get new" do
    get new_aksesori_url
    assert_response :success
  end

  test "should create aksesori" do
    assert_difference('Aksesori.count') do
      post aksesoris_url, params: { aksesori: { name: @aksesori.name, slug: @aksesori.slug } }
    end

    assert_redirected_to aksesori_url(Aksesori.last)
  end

  test "should show aksesori" do
    get aksesori_url(@aksesori)
    assert_response :success
  end

  test "should get edit" do
    get edit_aksesori_url(@aksesori)
    assert_response :success
  end

  test "should update aksesori" do
    patch aksesori_url(@aksesori), params: { aksesori: { name: @aksesori.name, slug: @aksesori.slug } }
    assert_redirected_to aksesori_url(@aksesori)
  end

  test "should destroy aksesori" do
    assert_difference('Aksesori.count', -1) do
      delete aksesori_url(@aksesori)
    end

    assert_redirected_to aksesoris_url
  end
end
