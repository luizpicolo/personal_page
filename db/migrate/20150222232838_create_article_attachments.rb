class CreateArticleAttachments < ActiveRecord::Migration
  def change
    create_table :article_attachments do |t|
      t.string :title
      t.string :image
      t.boolean :hightlight, :default => false

      t.timestamps null: false
    end
  end
end
