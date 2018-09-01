class AddStateToArticles < ActiveRecord::Migration[5.1]
  def up
    add_column :articles, :state, :string
    change_column_default :articles, :state, nil
    change_column_null :articles, :state, nil, Article.human_state_name(:draft)
  end

  def down
    remove_column :articles, :state
  end
end
