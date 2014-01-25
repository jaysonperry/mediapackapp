json.array!(@fact_sheets) do |fact_sheet|
  json.extract! fact_sheet, :id, :vanity_url, :country, :first_name, :last_name, :middle_initial, :p_k_a, :professional_business_type, :client_tel_mobile, :client_tel_work, :client_tel_alt, :client_email_alt, :client_url, :client_street_address_1, :client_street_address_2, :client_unit_number, :client_city, :client_county, :client_state, :client_postal_code, :company_name, :company_tel_main, :company_url, :company_email, :company_street_address_1, :company_street_address_2, :company_suite_number, :company_city, :company_county, :company_state, :company_postal_code
  json.url fact_sheet_url(fact_sheet, format: :json)
end
