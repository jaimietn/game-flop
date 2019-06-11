require 'test_helper'

class ConsoleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get console_index_url
    assert_response :success
  end

  test "should get show" do
    get console_show_url
    assert_response :success
  end

  test "should get new" do
    get console_new_url
    assert_response :success
  end

  test "should get create" do
    get console_create_url
    assert_response :success
  end

  test "should get destroy" do
    get console_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get console_edit_url
    assert_response :success
  end

  test "should get update" do
    get console_update_url
    assert_response :success
  end

end
