class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '自然' },
    { id: 3, name: '絵画' },
    { id: 4, name: 'インテリア' },
    { id: 5, name: '小物' },
    { id: 6, name: '本' },
    { id: 7, name: '音楽' },
    { id: 8, name: 'ゲーム' },
    { id: 9, name: 'おもちゃ' },
    { id: 10, name: 'グッズ' },
    { id: 11, name: 'プラモデル' },
    { id: 12, name: 'フィギュア' },
    { id: 13, name: 'ハンドメイド' },
    { id: 14, name: 'その他' }
  ]


  include ActiveHash::Associations
  has_many :collections


  end

