class AddImgUrlToTrumpets < ActiveRecord::Migration[5.2]
  def change
    add_column :trumpets, :img_url, :string
  end
end
