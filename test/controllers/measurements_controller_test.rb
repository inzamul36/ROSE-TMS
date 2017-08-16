require 'test_helper'

class MeasurementsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get measurements_edit_url
    assert_response :success
  end

  test "should get update" do
    get measurements_update_url
    assert_response :success
  end

end
