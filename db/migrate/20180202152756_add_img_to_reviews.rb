class AddImgToReviews < ActiveRecord::Migration[5.1]
  def up
    change_table :reviews do |t|
      t.attachment :img
    end
  end

  def down
    drop_attached_file :reviews, :img
  end
end
