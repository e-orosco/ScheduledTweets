class TweetsController < ApplicationController
  before_action :require_user_logged_in!
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]
  
  def index
    @tweets = Current.user.tweets
  end  
  def new
    @tweet = Tweet.new
  end
end