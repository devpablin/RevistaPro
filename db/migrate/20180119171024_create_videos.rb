class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.datetime :date
      t.string :url

      t.timestamps
    end
  end
end
