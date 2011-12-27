require 'test_helper'

class CoursesTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create courses_type" do
    assert_difference('CoursesType.count') do
      post :create, :courses_type => { }
    end

    assert_redirected_to courses_type_path(assigns(:courses_type))
  end

  test "should show courses_type" do
    get :show, :id => courses_types(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => courses_types(:one).to_param
    assert_response :success
  end

  test "should update courses_type" do
    put :update, :id => courses_types(:one).to_param, :courses_type => { }
    assert_redirected_to courses_type_path(assigns(:courses_type))
  end

  test "should destroy courses_type" do
    assert_difference('CoursesType.count', -1) do
      delete :destroy, :id => courses_types(:one).to_param
    end

    assert_redirected_to courses_types_path
  end
end
