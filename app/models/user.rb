class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  extend ActiveHash::Associations::ActiveRecordExtensions
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true 
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze}, allow_blank: true  
  validates :age,  numericality: { greater_than_or_equal_to: 16, less_than_or_equal_to: 120 }, allow_blank: true  


  has_many :collections
  has_many :comments
  belongs_to :gender
end
