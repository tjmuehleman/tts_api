require 'test_helper'

class ApiControllerTest < ActionController::TestCase
  test "should get instagram" do
    get :instagram
    assert_response :success
  end

end
