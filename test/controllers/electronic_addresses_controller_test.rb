require 'test_helper'

class ElectronicAddressesControllerTest < ActionController::TestCase
  setup do
    @electronic_address = electronic_addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:electronic_addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create electronic_address" do
    assert_difference('ElectronicAddress.count') do
      post :create, electronic_address: { contact_mechanism_id: @electronic_address.contact_mechanism_id, electronic_address_string: @electronic_address.electronic_address_string }
    end

    assert_redirected_to electronic_address_path(assigns(:electronic_address))
  end

  test "should show electronic_address" do
    get :show, id: @electronic_address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @electronic_address
    assert_response :success
  end

  test "should update electronic_address" do
    patch :update, id: @electronic_address, electronic_address: { contact_mechanism_id: @electronic_address.contact_mechanism_id, electronic_address_string: @electronic_address.electronic_address_string }
    assert_redirected_to electronic_address_path(assigns(:electronic_address))
  end

  test "should destroy electronic_address" do
    assert_difference('ElectronicAddress.count', -1) do
      delete :destroy, id: @electronic_address
    end

    assert_redirected_to electronic_addresses_path
  end
end
