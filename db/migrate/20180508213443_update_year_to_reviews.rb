class UpdateYearToReviews < ActiveRecord::Migration[5.1]
  def change
    change_column :reviews, :year, :string
  end
end
