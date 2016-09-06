class ProfilesController < ApplicationController
  	def show 
  		@user = User.find_by(name: params[:user_id])
  		#@user=User.find(params[:id]) 
  		#@posts = @user.posts.order('created_at DESC')
  		#@post=Post.new
  		@posts = User.find_by(name: params[:user_id]).posts.order('created_at DESC')
	end 
end
