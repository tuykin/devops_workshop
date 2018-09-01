class CreateArticleLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :article_links do |t|
      t.string :url, null: false
      t.integer :article_id, null: false

      t.timestamps
    end
  end
end
