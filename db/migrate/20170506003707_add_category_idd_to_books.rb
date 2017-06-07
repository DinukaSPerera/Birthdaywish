class AddCategoryIddToBooks < ActiveRecord::Migration
  def change
    add_column :books, :category_idd, :integer
  end
end
