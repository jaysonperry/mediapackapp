class AddUserIdToFactSheets < ActiveRecord::Migration
  def change
    add_column :fact_sheets, :user_id, :integer
  end
end
