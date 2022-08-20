require "test_helper"

class RoOperatorDprControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ro_operator_dpr_index_url
    assert_response :success
  end

  test "should get show" do
    get ro_operator_dpr_show_url
    assert_response :success
  end
end
