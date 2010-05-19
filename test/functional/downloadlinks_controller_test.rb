require 'test_helper'

class DownloadlinksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:downloadlinks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create downloadlink" do
    assert_difference('Downloadlink.count') do
      post :create, :downloadlink => { }
    end

    assert_redirected_to downloadlink_path(assigns(:downloadlink))
  end

  test "should show downloadlink" do
    get :show, :id => downloadlinks(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => downloadlinks(:one).to_param
    assert_response :success
  end

  test "should update downloadlink" do
    put :update, :id => downloadlinks(:one).to_param, :downloadlink => { }
    assert_redirected_to downloadlink_path(assigns(:downloadlink))
  end

  test "should destroy downloadlink" do
    assert_difference('Downloadlink.count', -1) do
      delete :destroy, :id => downloadlinks(:one).to_param
    end

    assert_redirected_to downloadlinks_path
  end
end
