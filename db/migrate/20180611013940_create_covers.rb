class CreateCovers < ActiveRecord::Migration[5.1]
  def change
    create_table :covers do |t|
      t.string :edicion

      t.timestamps
    end
  end
end
