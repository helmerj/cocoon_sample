require 'test_helper'

class ContactMechanismsControllerTest < ActionController::TestCase
  setup do
    @contact_mechanism = contact_mechanisms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_mechanisms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_mechanism" do
    assert_difference('ContactMechanism.count') do
      post :create, contact_mechanism: { contact_mechanism_type_id: @contact_mechanism.contact_mechanism_type_id }
    end

    assert_redirected_to contact_mechanism_path(assigns(:contact_mechanism))
  end

  test "should show contact_mechanism" do
    get :show, id: @contact_mechanism
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact_mechanism
    assert_response :success
  end

  test "should update contact_mechanism" do
    patch :update, id: @contact_mechanism, contact_mechanism: { contact_mechanism_type_id: @contact_mechanism.contact_mechanism_type_id }
    assert_redirected_to contact_mechanism_path(assigns(:contact_mechanism))
  end

  test "should destroy contact_mechanism" do
    assert_difference('ContactMechanism.count', -1) do
      delete :destroy, id: @contact_mechanism
    end

    assert_redirected_to contact_mechanisms_path
  end
end
