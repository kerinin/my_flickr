require 'test_helper'

class PhotoSetsControllerTest < ActionController::TestCase
  setup do
    @photo_set = photo_sets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photo_sets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photo_set" do
    assert_difference('PhotoSet.count') do
      post :create, :photo_set => @photo_set.attributes
    end

    assert_redirected_to photo_set_path(assigns(:photo_set))
  end

  test "should show photo_set" do
    get :show, :id => @photo_set.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @photo_set.to_param
    assert_response :success
  end

  test "should update photo_set" do
    put :update, :id => @photo_set.to_param, :photo_set => @photo_set.attributes
    assert_redirected_to photo_set_path(assigns(:photo_set))
  end

  test "should destroy photo_set" do
    assert_difference('PhotoSet.count', -1) do
      delete :destroy, :id => @photo_set.to_param
    end

    assert_redirected_to photo_sets_path
  end
end
