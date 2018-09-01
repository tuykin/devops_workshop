class RenameCommentsToArticleComments < ActiveRecord::Migration[5.1]
  def change
    rename_table :comments, :article_comments
  end
end
