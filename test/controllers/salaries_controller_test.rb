require 'test_helper'

class SalariesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get salaries_index_url
    assert_response :success
  end

  test "should get show" do
    get salaries_show_url
    assert_response :success
  end

  test "should get new" do
    get salaries_new_url
    assert_response :success
  end

  test "should get create" do
    get salaries_create_url
    assert_response :success
  end

  test "should get edit" do
    get salaries_edit_url
    assert_response :success
  end

  test "should get update" do
    get salaries_update_url
    assert_response :success
  end

  test "should get destroy" do
    get salaries_destroy_url
    assert_response :success
  end

end
