require 'test_helper'

class MicrropostsControllerTest < ActionController::TestCase
  setup do
    @micrropost = micrroposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micrroposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micrropost" do
    assert_difference('Micrropost.count') do
      post :create, micrropost: { content: @micrropost.content, userid: @micrropost.userid }
    end

    assert_redirected_to micrropost_path(assigns(:micrropost))
  end

  test "should show micrropost" do
    get :show, id: @micrropost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micrropost
    assert_response :success
  end

  test "should update micrropost" do
    put :update, id: @micrropost, micrropost: { content: @micrropost.content, userid: @micrropost.userid }
    assert_redirected_to micrropost_path(assigns(:micrropost))
  end

  test "should destroy micrropost" do
    assert_difference('Micrropost.count', -1) do
      delete :destroy, id: @micrropost
    end

    assert_redirected_to micrroposts_path
  end
end
