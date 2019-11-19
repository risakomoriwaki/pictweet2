class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @tweets = Tweet.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  end
end
