class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @grouped_posts = []
    @user.posts.group_by(&:header).each do |item|
      @grouped_posts.push(item)
    end
    @grouped_posts
  end
end
