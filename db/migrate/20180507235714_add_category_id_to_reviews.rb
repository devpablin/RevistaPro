class AddCategoryIdToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :category_id, :integer
  end
end
