class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :links, inverse_of: :article, dependent: :destroy
  belongs_to :category, optional: true

  validates :title, presence: true,
                    length: { minimum: 5 }

  accepts_nested_attributes_for :links, reject_if: :all_blank, allow_destroy: true

  state_machine :state, initial: :draft do
    state :draft
    state :on_moderation
    state :published

    event :send_to_moderation do
      transition :draft => :on_moderation
    end

    event :moderate do
      transition :on_moderation => :published
    end
  end
end
