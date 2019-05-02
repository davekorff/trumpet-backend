class AddColumnReactionTypeToReactions < ActiveRecord::Migration[5.2]
  def change
    add_column :reactions, :reaction_type, :string
  end
end
