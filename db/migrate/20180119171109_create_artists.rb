class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :img
      t.string :altimg

      t.timestamps
    end
  end
end
