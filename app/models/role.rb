class Role < ActiveRecord::Base
	belongs_to :group
	belongs_to :user
	enum role_type: {
		teacher: 1,
		student: 2,
	}
end