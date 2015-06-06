require 'test_helper'

class YiusControllerTest < ActionController::TestCase
  setup do
    @yiu = yius(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yius)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yiu" do
    assert_difference('Yiu.count') do
      post :create, yiu: { description: @yiu.description, name: @yiu.name, picture: @yiu.picture }
    end

    assert_redirected_to yiu_path(assigns(:yiu))
  end

  test "should show yiu" do
    get :show, id: @yiu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yiu
    assert_response :success
  end

  test "should update yiu" do
    patch :update, id: @yiu, yiu: { description: @yiu.description, name: @yiu.name, picture: @yiu.picture }
    assert_redirected_to yiu_path(assigns(:yiu))
  end

  test "should destroy yiu" do
    assert_difference('Yiu.count', -1) do
      delete :destroy, id: @yiu
    end

    assert_redirected_to yius_path
  end
end
