require 'test_helper'

class MerkLensasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @merk_lensa = merk_lensas(:one)
  end

  test "should get index" do
    get merk_lensas_url
    assert_response :success
  end

  test "should get new" do
    get new_merk_lensa_url
    assert_response :success
  end

  test "should create merk_lensa" do
    assert_difference('MerkLensa.count') do
      post merk_lensas_url, params: { merk_lensa: { name: @merk_lensa.name, slug: @merk_lensa.slug } }
    end

    assert_redirected_to merk_lensa_url(MerkLensa.last)
  end

  test "should show merk_lensa" do
    get merk_lensa_url(@merk_lensa)
    assert_response :success
  end

  test "should get edit" do
    get edit_merk_lensa_url(@merk_lensa)
    assert_response :success
  end

  test "should update merk_lensa" do
    patch merk_lensa_url(@merk_lensa), params: { merk_lensa: { name: @merk_lensa.name, slug: @merk_lensa.slug } }
    assert_redirected_to merk_lensa_url(@merk_lensa)
  end

  test "should destroy merk_lensa" do
    assert_difference('MerkLensa.count', -1) do
      delete merk_lensa_url(@merk_lensa)
    end

    assert_redirected_to merk_lensas_url
  end
end
