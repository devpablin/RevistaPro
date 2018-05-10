class AddArtistIdToReports < ActiveRecord::Migration[5.1]
  def change
    add_column :reports, :artist_id, :integer
  end
end
