class Activity < ActiveRecord::Base

  belongs_to :track

  validates :track, presence: true
  validates :title, presence: true, length: { minimum: 3, maximum: 255 }
  validates :receive_content, presence: true, length: { minimum: 3 }

end

