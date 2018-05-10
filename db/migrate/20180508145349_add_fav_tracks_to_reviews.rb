class AddFavTracksToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :fav1, :string
    add_column :reviews, :fav2, :string
    add_column :reviews, :fav3, :string
  end
end
