class AddIndexToCategoriesAndArticles < ActiveRecord::Migration
  def change
    add_index :categories, :slug
    add_index :articles, :slug
  end
end
