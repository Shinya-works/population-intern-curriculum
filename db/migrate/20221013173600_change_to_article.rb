class ChangeToArticle < ActiveRecord::Migration[6.1]
  def change
    change_column(:articles, :title, :string, null: false, limit: 10)
    change_column(:articles, :content, :text, null: false)
    change_column(:articles, :user_id, :integer, null: true)
  end
end
