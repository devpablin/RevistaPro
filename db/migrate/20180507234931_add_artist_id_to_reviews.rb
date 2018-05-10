class AddArtistIdToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :artist_id, :integer
  end
end
