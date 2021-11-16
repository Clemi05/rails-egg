require 'test_helper'

class HensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hens_index_url
    assert_response :success
  end

  test "should get show" do
    get hens_show_url
    assert_response :success
  end

end
