class Collection < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :category
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :title
    validates :point
    validates :category_id,           numericality: { other_than: 1 , message: "can't be blank"}
  end
end
