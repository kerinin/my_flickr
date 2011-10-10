require 'test_helper'

class SetTemplatesControllerTest < ActionController::TestCase
  setup do
    @set_template = set_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:set_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create set_template" do
    assert_difference('SetTemplate.count') do
      post :create, :set_template => @set_template.attributes
    end

    assert_redirected_to set_template_path(assigns(:set_template))
  end

  test "should show set_template" do
    get :show, :id => @set_template.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @set_template.to_param
    assert_response :success
  end

  test "should update set_template" do
    put :update, :id => @set_template.to_param, :set_template => @set_template.attributes
    assert_redirected_to set_template_path(assigns(:set_template))
  end

  test "should destroy set_template" do
    assert_difference('SetTemplate.count', -1) do
      delete :destroy, :id => @set_template.to_param
    end

    assert_redirected_to set_templates_path
  end
end
