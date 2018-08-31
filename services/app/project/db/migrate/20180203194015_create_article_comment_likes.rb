class CreateArticleCommentLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :article_comment_likes do |t|
      t.references :comment, null: false

      t.timestamps
    end
  end
end
