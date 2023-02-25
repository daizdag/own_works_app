class Profile < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :gender

  validates :age,   format: {with: /\d/, message: "is invalid. Input only number"}, allow_nil: true
end
