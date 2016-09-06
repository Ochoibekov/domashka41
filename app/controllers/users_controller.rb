class UsersController < ApplicationController
  before_action :user_signed_in?, only: [:index, :edit, :update, :destroy,
                                        :following, :followers]
  
  def following
    @title = "Following"
    @user  = User.find(params[:id])
    @users = @user.following.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end
  def show
    @user=User.find(params[:id])
    @posts=@user.posts.order(created_at: :DESC)
  end


  private
 
end