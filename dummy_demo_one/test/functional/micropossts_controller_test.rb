require 'test_helper'

class MicroposstsControllerTest < ActionController::TestCase
  setup do
    @microposst = micropossts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micropossts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microposst" do
    assert_difference('Microposst.count') do
      post :create, microposst: { content: @microposst.content, user_id: @microposst.user_id }
    end

    assert_redirected_to microposst_path(assigns(:microposst))
  end

  test "should show microposst" do
    get :show, id: @microposst
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @microposst
    assert_response :success
  end

  test "should update microposst" do
    put :update, id: @microposst, microposst: { content: @microposst.content, user_id: @microposst.user_id }
    assert_redirected_to microposst_path(assigns(:microposst))
  end

  test "should destroy microposst" do
    assert_difference('Microposst.count', -1) do
      delete :destroy, id: @microposst
    end

    assert_redirected_to micropossts_path
  end
end
