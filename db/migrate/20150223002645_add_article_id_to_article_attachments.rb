class AddArticleIdToArticleAttachments < ActiveRecord::Migration
  def change
    add_column :article_attachments, :article_id, :integer
  end
end
