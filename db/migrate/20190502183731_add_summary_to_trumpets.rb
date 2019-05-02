class AddSummaryToTrumpets < ActiveRecord::Migration[5.2]
  def change
    add_column :trumpets, :summary, :string
  end
end
