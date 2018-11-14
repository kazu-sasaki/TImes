require 'test_helper'

class ChaptersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get chapters_show_url
    assert_response :success
  end

  test "should get create" do
    get chapters_create_url
    assert_response :success
  end

  test "should get update" do
    get chapters_update_url
    assert_response :success
  end

  test "should get edit" do
    get chapters_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get chapters_destroy_url
    assert_response :success
  end

end
