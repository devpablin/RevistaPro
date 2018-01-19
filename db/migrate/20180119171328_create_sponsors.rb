class CreateSponsors < ActiveRecord::Migration[5.1]
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :url
      t.string :logo
      t.integer :position

      t.timestamps
    end
  end
end
