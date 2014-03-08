require 'test_helper'

class EpksControllerTest < ActionController::TestCase
  setup do
    @epk = epks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:epks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create epk" do
    assert_difference('Epk.count') do
      post :create, epk: { name: @epk.name, user_id: @epk.user_id }
    end

    assert_redirected_to epk_path(assigns(:epk))
  end

  test "should show epk" do
    get :show, id: @epk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @epk
    assert_response :success
  end

  test "should update epk" do
    patch :update, id: @epk, epk: { name: @epk.name, user_id: @epk.user_id }
    assert_redirected_to epk_path(assigns(:epk))
  end

  test "should destroy epk" do
    assert_difference('Epk.count', -1) do
      delete :destroy, id: @epk
    end

    assert_redirected_to epks_path
  end
end
