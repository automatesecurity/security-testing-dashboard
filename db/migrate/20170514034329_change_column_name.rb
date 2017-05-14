class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :projects, :type, :test_type
  end
end
