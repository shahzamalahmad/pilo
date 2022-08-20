require "test_helper"

class OperatorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get operators_index_url
    assert_response :success
  end

  test "should get show" do
    get operators_show_url
    assert_response :success
  end
end
