class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :summary
      t.date :date_publish
      t.text :body
      t.string :slug

      t.timestamps null: false
    end
  end
end
