require 'test_helper'

class BoomsControllerTest < ActionController::TestCase
  setup do
    @boom = booms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:booms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boom" do
    assert_difference('Boom.count') do
      post :create, :boom => @boom.attributes
    end

    assert_redirected_to boom_path(assigns(:boom))
  end

  test "should show boom" do
    get :show, :id => @boom.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @boom.to_param
    assert_response :success
  end

  test "should update boom" do
    put :update, :id => @boom.to_param, :boom => @boom.attributes
    assert_redirected_to boom_path(assigns(:boom))
  end

  test "should destroy boom" do
    assert_difference('Boom.count', -1) do
      delete :destroy, :id => @boom.to_param
    end

    assert_redirected_to booms_path
  end
end
