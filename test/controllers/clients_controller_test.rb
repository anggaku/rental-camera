require 'test_helper'

class ClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get clients_url
    assert_response :success
  end

  test "should get new" do
    get new_client_url
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post clients_url, params: { client: { alamat_kantor: @client.alamat_kantor, alamat_rumah: @client.alamat_rumah, client_name: @client.client_name, email: @client.email, id_client: @client.id_client, id_fb: @client.id_fb, id_ig: @client.id_ig, id_line: @client.id_line, kampus: @client.kampus, no_hp: @client.no_hp, slug: @client.slug, upload_identitas: @client.upload_identitas, upload_kk: @client.upload_kk, upload_ktp: @client.upload_ktp } }
    end

    assert_redirected_to client_url(Client.last)
  end

  test "should show client" do
    get client_url(@client)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_url(@client)
    assert_response :success
  end

  test "should update client" do
    patch client_url(@client), params: { client: { alamat_kantor: @client.alamat_kantor, alamat_rumah: @client.alamat_rumah, client_name: @client.client_name, email: @client.email, id_client: @client.id_client, id_fb: @client.id_fb, id_ig: @client.id_ig, id_line: @client.id_line, kampus: @client.kampus, no_hp: @client.no_hp, slug: @client.slug, upload_identitas: @client.upload_identitas, upload_kk: @client.upload_kk, upload_ktp: @client.upload_ktp } }
    assert_redirected_to client_url(@client)
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete client_url(@client)
    end

    assert_redirected_to clients_url
  end
end
