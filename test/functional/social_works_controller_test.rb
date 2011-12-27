require 'test_helper'

class SocialWorksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:social_works)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create social_work" do
    assert_difference('SocialWork.count') do
      post :create, :social_work => { }
    end

    assert_redirected_to social_work_path(assigns(:social_work))
  end

  test "should show social_work" do
    get :show, :id => social_works(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => social_works(:one).to_param
    assert_response :success
  end

  test "should update social_work" do
    put :update, :id => social_works(:one).to_param, :social_work => { }
    assert_redirected_to social_work_path(assigns(:social_work))
  end

  test "should destroy social_work" do
    assert_difference('SocialWork.count', -1) do
      delete :destroy, :id => social_works(:one).to_param
    end

    assert_redirected_to social_works_path
  end
end
