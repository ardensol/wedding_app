require 'test_helper'

class VendorsControllerTest < ActionController::TestCase
  setup do
    @vendor = vendors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vendors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vendor" do
    assert_difference('Vendor.count') do
      post :create, vendor: { apt_ste: @vendor.apt_ste, business_desc: @vendor.business_desc, business_name: @vendor.business_name, email: @vendor.email, encrypted_password: @vendor.encrypted_password, first_name: @vendor.first_name, headline: @vendor.headline, last_name: @vendor.last_name, phone_number: @vendor.phone_number, show_info: @vendor.show_info, street_address: @vendor.street_address, travel: @vendor.travel, website: @vendor.website, zipcode: @vendor.zipcode }
    end

    assert_redirected_to vendor_path(assigns(:vendor))
  end

  test "should show vendor" do
    get :show, id: @vendor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vendor
    assert_response :success
  end

  test "should update vendor" do
    patch :update, id: @vendor, vendor: { apt_ste: @vendor.apt_ste, business_desc: @vendor.business_desc, business_name: @vendor.business_name, email: @vendor.email, encrypted_password: @vendor.encrypted_password, first_name: @vendor.first_name, headline: @vendor.headline, last_name: @vendor.last_name, phone_number: @vendor.phone_number, show_info: @vendor.show_info, street_address: @vendor.street_address, travel: @vendor.travel, website: @vendor.website, zipcode: @vendor.zipcode }
    assert_redirected_to vendor_path(assigns(:vendor))
  end

  test "should destroy vendor" do
    assert_difference('Vendor.count', -1) do
      delete :destroy, id: @vendor
    end

    assert_redirected_to vendors_path
  end
end
