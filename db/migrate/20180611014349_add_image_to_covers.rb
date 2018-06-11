class AddImageToCovers < ActiveRecord::Migration[5.1]
  def up
    change_table :covers do |t|
      t.attachment :img
    end
  end

  def down
    drop_attached_file :covers, :img
  end
end
