require 'test_helper'

class PaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payment = payments(:one)
  end

  test "should get index" do
    get payments_url
    assert_response :success
  end

  test "should get new" do
    get new_payment_url
    assert_response :success
  end

  test "should create payment" do
    assert_difference('Payment.count') do
      post payments_url, params: { payment: { bank_id: @payment.bank_id, client_id: @payment.client_id, invoice_id: @payment.invoice_id, jumlah_diterima: @payment.jumlah_diterima, status_sewa: @payment.status_sewa, tgl_payment: @payment.tgl_payment, total_keseluruhan: @payment.total_keseluruhan } }
    end

    assert_redirected_to payment_url(Payment.last)
  end

  test "should show payment" do
    get payment_url(@payment)
    assert_response :success
  end

  test "should get edit" do
    get edit_payment_url(@payment)
    assert_response :success
  end

  test "should update payment" do
    patch payment_url(@payment), params: { payment: { bank_id: @payment.bank_id, client_id: @payment.client_id, invoice_id: @payment.invoice_id, jumlah_diterima: @payment.jumlah_diterima, status_sewa: @payment.status_sewa, tgl_payment: @payment.tgl_payment, total_keseluruhan: @payment.total_keseluruhan } }
    assert_redirected_to payment_url(@payment)
  end

  test "should destroy payment" do
    assert_difference('Payment.count', -1) do
      delete payment_url(@payment)
    end

    assert_redirected_to payments_url
  end
end
