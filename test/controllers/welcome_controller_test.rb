require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get plans" do
    get :plans
    assert_response :success
  end

  test "should get terms" do
    get :terms
    assert_response :success
  end

  test "should get guides" do
    get :guides
    assert_response :success
  end

end
