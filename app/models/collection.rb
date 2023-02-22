class Collection < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :category
  has_many_attached :images

  with_options presence: true do
    validates :title
    validates :point
    validates :category_id,           numericality: { other_than: 1 , message: "can't be blank"}
  end
  validates :images, presence: true 
  validates :images, length: { minimum: 1, maximum: 5, message: "は1枚以上5枚以下にしてください" }
end
