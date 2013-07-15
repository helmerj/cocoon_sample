require 'test_helper'

class ContactMechanismTypesControllerTest < ActionController::TestCase
  setup do
    @contact_mechanism_type = contact_mechanism_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_mechanism_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_mechanism_type" do
    assert_difference('ContactMechanismType.count') do
      post :create, contact_mechanism_type: { name: @contact_mechanism_type.name }
    end

    assert_redirected_to contact_mechanism_type_path(assigns(:contact_mechanism_type))
  end

  test "should show contact_mechanism_type" do
    get :show, id: @contact_mechanism_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact_mechanism_type
    assert_response :success
  end

  test "should update contact_mechanism_type" do
    patch :update, id: @contact_mechanism_type, contact_mechanism_type: { name: @contact_mechanism_type.name }
    assert_redirected_to contact_mechanism_type_path(assigns(:contact_mechanism_type))
  end

  test "should destroy contact_mechanism_type" do
    assert_difference('ContactMechanismType.count', -1) do
      delete :destroy, id: @contact_mechanism_type
    end

    assert_redirected_to contact_mechanism_types_path
  end
end
