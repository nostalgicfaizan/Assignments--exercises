require 'test_helper'

class MiccropostsControllerTest < ActionController::TestCase
  setup do
    @miccropost = miccroposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:miccroposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create miccropost" do
    assert_difference('Miccropost.count') do
      post :create, miccropost: { content: @miccropost.content, userid: @miccropost.userid }
    end

    assert_redirected_to miccropost_path(assigns(:miccropost))
  end

  test "should show miccropost" do
    get :show, id: @miccropost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @miccropost
    assert_response :success
  end

  test "should update miccropost" do
    put :update, id: @miccropost, miccropost: { content: @miccropost.content, userid: @miccropost.userid }
    assert_redirected_to miccropost_path(assigns(:miccropost))
  end

  test "should destroy miccropost" do
    assert_difference('Miccropost.count', -1) do
      delete :destroy, id: @miccropost
    end

    assert_redirected_to miccroposts_path
  end
end
