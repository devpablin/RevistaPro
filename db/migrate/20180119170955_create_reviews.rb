class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :name
      t.text :description
      t.text :body
      t.date :year
      t.datetime :date
      t.string :place
      t.string :img

      t.timestamps
    end
  end
end
