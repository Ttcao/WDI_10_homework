class ChangeColumnNameToName < ActiveRecord::Migration[5.0]
  def change
      rename_column :cakes, :type, :name
  end
end
