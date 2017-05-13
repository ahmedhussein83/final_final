require 'test_helper'

class AhmedsControllerTest < ActionController::TestCase
  setup do
    @ahmed = ahmeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ahmeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ahmed" do
    assert_difference('Ahmed.count') do
      post :create, ahmed: { name: @ahmed.name }
    end

    assert_redirected_to ahmed_path(assigns(:ahmed))
  end

  test "should show ahmed" do
    get :show, id: @ahmed
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ahmed
    assert_response :success
  end

  test "should update ahmed" do
    patch :update, id: @ahmed, ahmed: { name: @ahmed.name }
    assert_redirected_to ahmed_path(assigns(:ahmed))
  end

  test "should destroy ahmed" do
    assert_difference('Ahmed.count', -1) do
      delete :destroy, id: @ahmed
    end

    assert_redirected_to ahmeds_path
  end
end
