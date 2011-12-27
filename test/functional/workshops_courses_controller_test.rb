require 'test_helper'

class WorkshopsCoursesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workshops_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workshops_course" do
    assert_difference('WorkshopsCourse.count') do
      post :create, :workshops_course => { }
    end

    assert_redirected_to workshops_course_path(assigns(:workshops_course))
  end

  test "should show workshops_course" do
    get :show, :id => workshops_courses(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => workshops_courses(:one).to_param
    assert_response :success
  end

  test "should update workshops_course" do
    put :update, :id => workshops_courses(:one).to_param, :workshops_course => { }
    assert_redirected_to workshops_course_path(assigns(:workshops_course))
  end

  test "should destroy workshops_course" do
    assert_difference('WorkshopsCourse.count', -1) do
      delete :destroy, :id => workshops_courses(:one).to_param
    end

    assert_redirected_to workshops_courses_path
  end
end
