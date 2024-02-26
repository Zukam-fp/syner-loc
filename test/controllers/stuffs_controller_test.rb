require "test_helper"

class StuffsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stuffs_index_url
    assert_response :success
  end

  test "should get show" do
    get stuffs_show_url
    assert_response :success
  end

  test "should get new" do
    get stuffs_new_url
    assert_response :success
  end

  test "should get create" do
    get stuffs_create_url
    assert_response :success
  end

  test "should get destroy" do
    get stuffs_destroy_url
    assert_response :success
  end
end
