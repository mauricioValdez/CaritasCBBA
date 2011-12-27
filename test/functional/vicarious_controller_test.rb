require 'test_helper'

class VicariousControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vicarious)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vicariou" do
    assert_difference('Vicariou.count') do
      post :create, :vicariou => { }
    end

    assert_redirected_to vicariou_path(assigns(:vicariou))
  end

  test "should show vicariou" do
    get :show, :id => vicarious(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => vicarious(:one).to_param
    assert_response :success
  end

  test "should update vicariou" do
    put :update, :id => vicarious(:one).to_param, :vicariou => { }
    assert_redirected_to vicariou_path(assigns(:vicariou))
  end

  test "should destroy vicariou" do
    assert_difference('Vicariou.count', -1) do
      delete :destroy, :id => vicarious(:one).to_param
    end

    assert_redirected_to vicarious_path
  end
end
