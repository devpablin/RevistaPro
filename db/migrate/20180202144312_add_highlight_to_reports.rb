class AddHighlightToReports < ActiveRecord::Migration[5.1]
  def change
    add_column :reports, :highlight, :boolean
  end
end
