class CreateAlerts < ActiveRecord::Migration[5.2]
  def change
    create_table :alerts do |t|
      t.string :type
      t.string :content
      t.references :user, foreign_key: true
      t.references :website, foreign_key: true

      t.timestamps
    end
  end
end
