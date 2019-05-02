class RemoveJeerFromReactions < ActiveRecord::Migration[5.2]
  def change
    remove_column :reactions, :jeer
  end
end
