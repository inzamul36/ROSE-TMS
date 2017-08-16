require 'test_helper'

class StaffsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get staffs_index_url
    assert_response :success
  end

  test "should get show" do
    get staffs_show_url
    assert_response :success
  end

  test "should get new" do
    get staffs_new_url
    assert_response :success
  end

  test "should get create" do
    get staffs_create_url
    assert_response :success
  end

  test "should get edit" do
    get staffs_edit_url
    assert_response :success
  end

  test "should get update" do
    get staffs_update_url
    assert_response :success
  end

  test "should get destroy" do
    get staffs_destroy_url
    assert_response :success
  end

end
