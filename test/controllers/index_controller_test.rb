require "test_helper"

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get index_show_url
    assert_response :success
  end

  test "should get about" do
    get index_about_url
    assert_response :success
  end

  test "should get dpr" do
    get index_dpr_url
    assert_response :success
  end
end
