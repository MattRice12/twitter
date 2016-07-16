class TweetsController < ApplicationController
  def index
    render template: 'tweets/index.html.erb', locals: {
      users: User.all,
      tweets: Tweet.all.order(created_at: :desc).limit(20)
    }
  end

  def show
    if Tweet.exists?(params[:id])
      tweet = Tweet.find(params[:id])
      render template: 'tweets/show.html.erb', locals: {
        tweet: tweet,
      }
    else
      render html: "Not Found", status: 404
    end
  end

  def new
    render locals: {
      tweet: Tweet.new
    }
  end

  def create
    tweet = Tweet.new
    tweet.user_id = params[:tweet][:user_id]
    tweet.body = params[:tweet][:body]
    if tweet.save
      redirect_to "/"
    else
      flash[:alert] = "Could not be saved due to errors."
      render template: 'tweets/new.html.erb', locals: {
        tweet: tweet
      }
    end
  end
end
