class AddIndexToFactSheets < ActiveRecord::Migration
  def change
    add_index :fact_sheets, :vanity_url, :unique => true 
  end
end
