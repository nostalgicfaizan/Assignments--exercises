require 'test_helper'

class DrumiesControllerTest < ActionController::TestCase
  setup do
    @drumy = drumies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drumies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drumy" do
    assert_difference('Drumy.count') do
      post :create, drumy: { content: @drumy.content, name: @drumy.name, title: @drumy.title }
    end

    assert_redirected_to drumy_path(assigns(:drumy))
  end

  test "should show drumy" do
    get :show, id: @drumy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drumy
    assert_response :success
  end

  test "should update drumy" do
    put :update, id: @drumy, drumy: { content: @drumy.content, name: @drumy.name, title: @drumy.title }
    assert_redirected_to drumy_path(assigns(:drumy))
  end

  test "should destroy drumy" do
    assert_difference('Drumy.count', -1) do
      delete :destroy, id: @drumy
    end

    assert_redirected_to drumies_path
  end
end
