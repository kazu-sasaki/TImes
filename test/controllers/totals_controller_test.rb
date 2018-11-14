require 'test_helper'

class TotalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get totals_index_url
    assert_response :success
  end

  test "should get create" do
    get totals_create_url
    assert_response :success
  end

  test "should get destroy" do
    get totals_destroy_url
    assert_response :success
  end

end
