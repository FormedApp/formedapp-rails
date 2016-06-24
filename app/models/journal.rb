class Journal < ActiveRecord::Base
  has_many :posts
  belongs_to :user

  validates :post, presence:true
end
