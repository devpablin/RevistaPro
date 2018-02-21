class AddImgsToArtists < ActiveRecord::Migration[5.1]
  def up
    change_table :artists do |t|
      t.attachment :img
      t.attachment :altimg
    end
  end

  def down
    drop_attached_file :artists, :img
    drop_attached_file :artists, :altimg
  end
end
