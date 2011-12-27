require 'test_helper'

class WorkshopCourseTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workshop_course_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workshop_course_type" do
    assert_difference('WorkshopCourseType.count') do
      post :create, :workshop_course_type => { }
    end

    assert_redirected_to workshop_course_type_path(assigns(:workshop_course_type))
  end

  test "should show workshop_course_type" do
    get :show, :id => workshop_course_types(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => workshop_course_types(:one).to_param
    assert_response :success
  end

  test "should update workshop_course_type" do
    put :update, :id => workshop_course_types(:one).to_param, :workshop_course_type => { }
    assert_redirected_to workshop_course_type_path(assigns(:workshop_course_type))
  end

  test "should destroy workshop_course_type" do
    assert_difference('WorkshopCourseType.count', -1) do
      delete :destroy, :id => workshop_course_types(:one).to_param
    end

    assert_redirected_to workshop_course_types_path
  end
end
