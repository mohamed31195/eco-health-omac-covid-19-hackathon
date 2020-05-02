require 'test_helper'

class PatientsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get patients_index_url
    assert_response :success
  end

  test "should get import" do
    get patients_import_url
    assert_response :success
  end

end
