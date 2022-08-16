require "test_helper"

class AtmControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get atm_index_url
    assert_response :success
  end

  test "should get login" do
    get atm_login_url
    assert_response :success
  end

  test "should get transac" do
    get atm_transac_url
    assert_response :success
  end

  test "should get show_bal" do
    get atm_show_bal_url
    assert_response :success
  end
end
