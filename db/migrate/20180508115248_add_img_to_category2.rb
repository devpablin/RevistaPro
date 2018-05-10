class AddImgToCategory2 < ActiveRecord::Migration[5.1]
  def up
    change_table :categories do |t|
      t.attachment :img
    end
  end

  def down
    drop_attached_file :categories, :img
  end
end
