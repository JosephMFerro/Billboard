require 'test_helper'

class BillboardmodelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get billboardmodels_index_url
    assert_response :success
  end

  test "should get show" do
    get billboardmodels_show_url
    assert_response :success
  end

  test "should get edit" do
    get billboardmodels_edit_url
    assert_response :success
  end

  test "should get new" do
    get billboardmodels_new_url
    assert_response :success
  end

end
