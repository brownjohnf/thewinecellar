require 'test_helper'

class CompositionsControllerTest < ActionController::TestCase
  setup do
    @composition = compositions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compositions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create composition" do
    assert_difference('Composition.count') do
      post :create, :composition => @composition.attributes
    end

    assert_redirected_to composition_path(assigns(:composition))
  end

  test "should show composition" do
    get :show, :id => @composition.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @composition.to_param
    assert_response :success
  end

  test "should update composition" do
    put :update, :id => @composition.to_param, :composition => @composition.attributes
    assert_redirected_to composition_path(assigns(:composition))
  end

  test "should destroy composition" do
    assert_difference('Composition.count', -1) do
      delete :destroy, :id => @composition.to_param
    end

    assert_redirected_to compositions_path
  end
end
