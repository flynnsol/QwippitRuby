require "test_helper"

class QwippsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qwipp = qwipps(:one)
  end

  test "should get index" do
    get qwipps_url
    assert_response :success
  end

  test "should get new" do
    get new_qwipp_url
    assert_response :success
  end

  test "should create qwipp" do
    assert_difference("Qwipp.count") do
      post qwipps_url, params: { qwipp: { qwipp: @qwipp.qwipp } }
    end

    assert_redirected_to qwipp_url(Qwipp.last)
  end

  test "should show qwipp" do
    get qwipp_url(@qwipp)
    assert_response :success
  end

  test "should get edit" do
    get edit_qwipp_url(@qwipp)
    assert_response :success
  end

  test "should update qwipp" do
    patch qwipp_url(@qwipp), params: { qwipp: { qwipp: @qwipp.qwipp } }
    assert_redirected_to qwipp_url(@qwipp)
  end

  test "should destroy qwipp" do
    assert_difference("Qwipp.count", -1) do
      delete qwipp_url(@qwipp)
    end

    assert_redirected_to qwipps_url
  end
end
