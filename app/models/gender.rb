class Gender < ActiveHash::Base
  self.data = [
    { id: 1,  type: '---' },
    { id: 2,  type: '男性' },
    { id: 3,  type: '女性' },
    { id: 4,  type: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :users
end