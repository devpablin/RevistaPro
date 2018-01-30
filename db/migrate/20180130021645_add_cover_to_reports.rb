class AddCoverToReports < ActiveRecord::Migration[5.1]
  def change
    add_column :reports, :cover, :boolean
  end
end
