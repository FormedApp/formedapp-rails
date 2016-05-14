require "rails_helper"

RSpec.describe Post, type: :model do
	it "is invalid when message is blank" do
		post = Post.new(message: nil)
		expect(post).not_to be_valid
	end
end