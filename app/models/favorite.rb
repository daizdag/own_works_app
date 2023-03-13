class Favorite < ApplicationRecord
  belongs_to :user   
  belongs_to :collection   

  validates_uniqueness_of :collection_id, scope: :user_id
  
  def self.count_by_collection(collection_id)
    where(collection_id: collection_id).count
  end

end
