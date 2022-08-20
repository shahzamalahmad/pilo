require "test_helper"

class StpDprControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stp_dpr_index_url
    assert_response :success
  end

  test "should get show" do
    get stp_dpr_show_url
    assert_response :success
  end
end
