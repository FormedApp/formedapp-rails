class Post < ActiveRecord::Base
  validates :message, presence:true, length:{minimum:3}
end
