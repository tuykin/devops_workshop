class Article::Comment::Like < ApplicationRecord
  belongs_to :comment

  scope :recent, -> { where('"created_at" < ?', 1.hour.ago) }
end
