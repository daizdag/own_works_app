class Donation < ApplicationRecord
  attr_accessor :token
  validates :price, presence: true
  validates :text,  presence: true
  validates :token, presence: true

  belongs_to :user
  belongs_to :donationd, class_name: "User", foreign_key: "donationd_id"
end
