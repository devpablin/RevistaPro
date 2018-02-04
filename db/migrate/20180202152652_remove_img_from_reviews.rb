class RemoveImgFromReviews < ActiveRecord::Migration[5.1]
  def change
    remove_column :reviews, :img, :string
  end
end
