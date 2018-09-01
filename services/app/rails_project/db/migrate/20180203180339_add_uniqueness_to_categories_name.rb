class AddUniquenessToCategoriesName < ActiveRecord::Migration[5.1]
  def change
    add_index :article_categories, :name, unique: true
  end
end
