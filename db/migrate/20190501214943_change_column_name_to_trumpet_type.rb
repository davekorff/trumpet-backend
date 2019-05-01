class ChangeColumnNameToTrumpetType < ActiveRecord::Migration[5.2]
  def change
    rename_column :alerts, :type, :trumpet_type
  end
end
