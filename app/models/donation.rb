class Donation < ApplicationRecord
  attr_accessor :token
  validates :price, presence: true
  validates :text,  presence: true
  validates :token, presence: true
end
