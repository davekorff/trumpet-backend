class CreateTrumpets < ActiveRecord::Migration[5.2]
  def change
    create_table :trumpets do |t|
      t.string :trumpet_type
      t.string :content
      t.references :user, foreign_key: true
      t.references :website, foreign_key: true

      t.timestamps
    end
  end
end
