class AddImgcoverToReports < ActiveRecord::Migration[5.1]
  def up
    change_table :reports do |t|
      t.attachment :imgcover
    end
  end

  def down
    drop_attached_file :reports, :imgcover
  end
end
