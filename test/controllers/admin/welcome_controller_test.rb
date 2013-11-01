require 'test_helper'

class Admin::WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get verify" do
    get :verify
    assert_response :success
  end

end
