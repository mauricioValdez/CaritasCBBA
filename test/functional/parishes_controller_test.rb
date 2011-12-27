require 'test_helper'

class ParishesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parishes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parish" do
    assert_difference('Parish.count') do
      post :create, :parish => { }
    end

    assert_redirected_to parish_path(assigns(:parish))
  end

  test "should show parish" do
    get :show, :id => parishes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => parishes(:one).to_param
    assert_response :success
  end

  test "should update parish" do
    put :update, :id => parishes(:one).to_param, :parish => { }
    assert_redirected_to parish_path(assigns(:parish))
  end

  test "should destroy parish" do
    assert_difference('Parish.count', -1) do
      delete :destroy, :id => parishes(:one).to_param
    end

    assert_redirected_to parishes_path
  end
end
