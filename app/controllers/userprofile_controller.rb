class UserprofileController < ApplicationController
	before_action :authenticate_user!, only: [:userprofile]
	def userprofile
		@posts = Post.all
	end
end
