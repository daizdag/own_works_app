class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :collection

  validates :text, presence: true
end
