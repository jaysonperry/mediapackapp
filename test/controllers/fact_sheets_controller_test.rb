require 'test_helper'

class FactSheetsControllerTest < ActionController::TestCase
  setup do
    @fact_sheet = fact_sheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fact_sheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fact_sheet" do
    assert_difference('FactSheet.count') do
      post :create, fact_sheet: { client_city: @fact_sheet.client_city, client_county: @fact_sheet.client_county, client_email_alt: @fact_sheet.client_email_alt, client_postal_code: @fact_sheet.client_postal_code, client_state: @fact_sheet.client_state, client_street_address_1: @fact_sheet.client_street_address_1, client_street_address_2: @fact_sheet.client_street_address_2, client_tel_alt: @fact_sheet.client_tel_alt, client_tel_mobile: @fact_sheet.client_tel_mobile, client_tel_work: @fact_sheet.client_tel_work, client_unit_number: @fact_sheet.client_unit_number, client_url: @fact_sheet.client_url, company_city: @fact_sheet.company_city, company_county: @fact_sheet.company_county, company_email: @fact_sheet.company_email, company_name: @fact_sheet.company_name, company_postal_code: @fact_sheet.company_postal_code, company_state: @fact_sheet.company_state, company_street_address_1: @fact_sheet.company_street_address_1, company_street_address_2: @fact_sheet.company_street_address_2, company_suite_number: @fact_sheet.company_suite_number, company_tel_main: @fact_sheet.company_tel_main, company_url: @fact_sheet.company_url, country: @fact_sheet.country, first_name: @fact_sheet.first_name, last_name: @fact_sheet.last_name, middle_initial: @fact_sheet.middle_initial, p_k_a: @fact_sheet.p_k_a, professional_business_type: @fact_sheet.professional_business_type, vanity_url: @fact_sheet.vanity_url }
    end

    assert_redirected_to fact_sheet_path(assigns(:fact_sheet))
  end

  test "should show fact_sheet" do
    get :show, id: @fact_sheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fact_sheet
    assert_response :success
  end

  test "should update fact_sheet" do
    patch :update, id: @fact_sheet, fact_sheet: { client_city: @fact_sheet.client_city, client_county: @fact_sheet.client_county, client_email_alt: @fact_sheet.client_email_alt, client_postal_code: @fact_sheet.client_postal_code, client_state: @fact_sheet.client_state, client_street_address_1: @fact_sheet.client_street_address_1, client_street_address_2: @fact_sheet.client_street_address_2, client_tel_alt: @fact_sheet.client_tel_alt, client_tel_mobile: @fact_sheet.client_tel_mobile, client_tel_work: @fact_sheet.client_tel_work, client_unit_number: @fact_sheet.client_unit_number, client_url: @fact_sheet.client_url, company_city: @fact_sheet.company_city, company_county: @fact_sheet.company_county, company_email: @fact_sheet.company_email, company_name: @fact_sheet.company_name, company_postal_code: @fact_sheet.company_postal_code, company_state: @fact_sheet.company_state, company_street_address_1: @fact_sheet.company_street_address_1, company_street_address_2: @fact_sheet.company_street_address_2, company_suite_number: @fact_sheet.company_suite_number, company_tel_main: @fact_sheet.company_tel_main, company_url: @fact_sheet.company_url, country: @fact_sheet.country, first_name: @fact_sheet.first_name, last_name: @fact_sheet.last_name, middle_initial: @fact_sheet.middle_initial, p_k_a: @fact_sheet.p_k_a, professional_business_type: @fact_sheet.professional_business_type, vanity_url: @fact_sheet.vanity_url }
    assert_redirected_to fact_sheet_path(assigns(:fact_sheet))
  end

  test "should destroy fact_sheet" do
    assert_difference('FactSheet.count', -1) do
      delete :destroy, id: @fact_sheet
    end

    assert_redirected_to fact_sheets_path
  end
end
