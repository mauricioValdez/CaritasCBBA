require 'test_helper'

class AssistanceListsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assistance_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assistance_list" do
    assert_difference('AssistanceList.count') do
      post :create, :assistance_list => { }
    end

    assert_redirected_to assistance_list_path(assigns(:assistance_list))
  end

  test "should show assistance_list" do
    get :show, :id => assistance_lists(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => assistance_lists(:one).to_param
    assert_response :success
  end

  test "should update assistance_list" do
    put :update, :id => assistance_lists(:one).to_param, :assistance_list => { }
    assert_redirected_to assistance_list_path(assigns(:assistance_list))
  end

  test "should destroy assistance_list" do
    assert_difference('AssistanceList.count', -1) do
      delete :destroy, :id => assistance_lists(:one).to_param
    end

    assert_redirected_to assistance_lists_path
  end
end
