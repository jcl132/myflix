require 'spec_helper'

describe User do
	it { should validate_presence_of(:email) }
	it { should validate_presence_of(:password) }
	it { should validate_presence_of(:full_name) }
	it { should validate_uniqueness_of(:email) }
	it { should have_many(:queue_items).order('position') }

	describe "#queued_video?" do
		it "returns true if user has queued the video" do
			user = Fabricate(:user)
			video = Fabricate(:video)
			Fabricate(:queue_item, user: user, video: video)
			user.queued_video?(video).should be true
		end

		it "returns false if the user has not queued the video" do
			user = Fabricate(:user)
			video = Fabricate(:video)
			user.queued_video?(video).should be false
		end
	end
end