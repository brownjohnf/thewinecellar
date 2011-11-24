require 'test_helper'

class FormatsControllerTest < ActionController::TestCase
  setup do
    @format = formats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:formats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create format" do
    assert_difference('Format.count') do
      post :create, :format => @format.attributes
    end

    assert_redirected_to format_path(assigns(:format))
  end

  test "should show format" do
    get :show, :id => @format.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @format.to_param
    assert_response :success
  end

  test "should update format" do
    put :update, :id => @format.to_param, :format => @format.attributes
    assert_redirected_to format_path(assigns(:format))
  end

  test "should destroy format" do
    assert_difference('Format.count', -1) do
      delete :destroy, :id => @format.to_param
    end

    assert_redirected_to formats_path
  end
end
