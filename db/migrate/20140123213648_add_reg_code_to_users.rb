class AddRegCodeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :reg_code, :string
  end
end
