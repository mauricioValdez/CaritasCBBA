require 'test_helper'

class HistoryCoursesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:history_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create history_course" do
    assert_difference('HistoryCourse.count') do
      post :create, :history_course => { }
    end

    assert_redirected_to history_course_path(assigns(:history_course))
  end

  test "should show history_course" do
    get :show, :id => history_courses(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => history_courses(:one).to_param
    assert_response :success
  end

  test "should update history_course" do
    put :update, :id => history_courses(:one).to_param, :history_course => { }
    assert_redirected_to history_course_path(assigns(:history_course))
  end

  test "should destroy history_course" do
    assert_difference('HistoryCourse.count', -1) do
      delete :destroy, :id => history_courses(:one).to_param
    end

    assert_redirected_to history_courses_path
  end
end
