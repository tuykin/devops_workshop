class Article::Link < ApplicationRecord
  belongs_to :article, inverse_of: :links
end
