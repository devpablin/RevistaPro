class RemoveImgFromArtists < ActiveRecord::Migration[5.1]
  def change
    remove_column :artists, :img, :string
    remove_column :artists, :altimg, :string
  end
end
