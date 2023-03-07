class Donation < ApplicationRecord
  validates :price, presence: true
  validates :text,  presence: true
  validates :token, presence: true
end
