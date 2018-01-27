class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :subtitle
      t.string :place
      t.datetime :date
      t.text :body

      t.timestamps
    end
  end
end
