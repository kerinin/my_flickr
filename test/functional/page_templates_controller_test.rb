require 'test_helper'

class PageTemplatesControllerTest < ActionController::TestCase
  setup do
    @page_template = page_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:page_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create page_template" do
    assert_difference('PageTemplate.count') do
      post :create, :page_template => @page_template.attributes
    end

    assert_redirected_to page_template_path(assigns(:page_template))
  end

  test "should show page_template" do
    get :show, :id => @page_template.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @page_template.to_param
    assert_response :success
  end

  test "should update page_template" do
    put :update, :id => @page_template.to_param, :page_template => @page_template.attributes
    assert_redirected_to page_template_path(assigns(:page_template))
  end

  test "should destroy page_template" do
    assert_difference('PageTemplate.count', -1) do
      delete :destroy, :id => @page_template.to_param
    end

    assert_redirected_to page_templates_path
  end
end
