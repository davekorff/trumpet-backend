class CreateReactions < ActiveRecord::Migration[5.2]
  def change
    create_table :reactions do |t|
      t.references :user, foreign_key: true
      t.references :trumpet, foreign_key: true
      t.boolean :cheer
      t.boolean :jeer

      t.timestamps
    end
  end
end
