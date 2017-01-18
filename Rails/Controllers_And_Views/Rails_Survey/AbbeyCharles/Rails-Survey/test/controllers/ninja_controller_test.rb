require 'test_helper'

class NinjaControllerTest < ActionController::TestCase
  test "should get result" do
    get :result
    assert_response :success
  end

end
