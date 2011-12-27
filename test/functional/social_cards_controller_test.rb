require 'test_helper'

class SocialCardsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:social_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create social_card" do
    assert_difference('SocialCard.count') do
      post :create, :social_card => { }
    end

    assert_redirected_to social_card_path(assigns(:social_card))
  end

  test "should show social_card" do
    get :show, :id => social_cards(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => social_cards(:one).to_param
    assert_response :success
  end

  test "should update social_card" do
    put :update, :id => social_cards(:one).to_param, :social_card => { }
    assert_redirected_to social_card_path(assigns(:social_card))
  end

  test "should destroy social_card" do
    assert_difference('SocialCard.count', -1) do
      delete :destroy, :id => social_cards(:one).to_param
    end

    assert_redirected_to social_cards_path
  end
end
