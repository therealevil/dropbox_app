require 'test_helper'

class Downloadlink2sControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:downloadlink2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create downloadlink2" do
    assert_difference('Downloadlink2.count') do
      post :create, :downloadlink2 => { }
    end

    assert_redirected_to downloadlink2_path(assigns(:downloadlink2))
  end

  test "should show downloadlink2" do
    get :show, :id => downloadlink2s(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => downloadlink2s(:one).to_param
    assert_response :success
  end

  test "should update downloadlink2" do
    put :update, :id => downloadlink2s(:one).to_param, :downloadlink2 => { }
    assert_redirected_to downloadlink2_path(assigns(:downloadlink2))
  end

  test "should destroy downloadlink2" do
    assert_difference('Downloadlink2.count', -1) do
      delete :destroy, :id => downloadlink2s(:one).to_param
    end

    assert_redirected_to downloadlink2s_path
  end
end
