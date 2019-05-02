class ChangeContentToBeTextInTrumpets < ActiveRecord::Migration[5.2]
  def change
    change_column :trumpets, :content, :text
  end
end
