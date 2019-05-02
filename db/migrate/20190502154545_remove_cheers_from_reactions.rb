class RemoveCheersFromReactions < ActiveRecord::Migration[5.2]
  def change
    remove_column :reactions, :cheer
  end
end
