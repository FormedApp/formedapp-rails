class Activity < ActiveRecord::Base

  belongs_to :pack

  validates :pack, presence: true
  validates :title, presence: true, length: { minimum: 3, maximum: 255 }
  validates :receive_content, presence: true, length: { minimum: 3 }

end

