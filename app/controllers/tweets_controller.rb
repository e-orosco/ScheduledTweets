class TweetsController < ApplicationController
  before_action :require_user_logged_in!
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]
  
  def index
    @tweets = Current.user.tweets
  end  
  def new
    @tweet = Tweet.new
  end

  def create 
    @tweet = Current.user.tweets.new(tweet_params)
    if @tweet.save
      redirect_to @tweet, notice: "Tweet was scheduled Succsessfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:twitter_account_id, :body, :publish_at)
  end
end