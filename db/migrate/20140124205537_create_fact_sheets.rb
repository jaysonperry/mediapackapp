class CreateFactSheets < ActiveRecord::Migration
  def change
    create_table :fact_sheets do |t|
      t.string :vanity_url
      t.string :description
      t.string :country
      t.string :first_name
      t.string :last_name
      t.string :middle_initial
      t.string :p_k_a
      t.string :professional_business_type
      t.string :client_tel_mobile
      t.string :client_tel_work
      t.string :client_tel_alt
      t.string :client_email_alt
      t.string :client_url
      t.string :client_street_address_1
      t.string :client_street_address_2
      t.string :client_unit_number
      t.string :client_city
      t.string :client_county
      t.string :client_state
      t.string :client_postal_code
      t.string :company_name
      t.string :company_tel_main
      t.string :company_url
      t.string :company_email
      t.string :company_street_address_1
      t.string :company_street_address_2
      t.string :company_suite_number
      t.string :company_city
      t.string :company_county
      t.string :company_state
      t.string :company_postal_code

      t.timestamps
    end
  end
end
