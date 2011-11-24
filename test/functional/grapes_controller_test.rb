require 'test_helper'

class GrapesControllerTest < ActionController::TestCase
  setup do
    @grape = grapes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grapes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grape" do
    assert_difference('Grape.count') do
      post :create, :grape => @grape.attributes
    end

    assert_redirected_to grape_path(assigns(:grape))
  end

  test "should show grape" do
    get :show, :id => @grape.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @grape.to_param
    assert_response :success
  end

  test "should update grape" do
    put :update, :id => @grape.to_param, :grape => @grape.attributes
    assert_redirected_to grape_path(assigns(:grape))
  end

  test "should destroy grape" do
    assert_difference('Grape.count', -1) do
      delete :destroy, :id => @grape.to_param
    end

    assert_redirected_to grapes_path
  end
end
