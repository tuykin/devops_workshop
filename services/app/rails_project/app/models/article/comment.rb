class Article::Comment < ApplicationRecord
  belongs_to :article
  has_many   :likes

  validates :commentor, presence: true
  validates :body, presence: true
end
