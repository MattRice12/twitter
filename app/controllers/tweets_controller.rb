class TweetsController < ApplicationController
  def index
    render template: 'tweets/index.html.erb', locals: {
      tweets: Tweet.all,
      users: User.all
    }
  end

  def show
    if Tweet.exists?(params[:id])
      render template: 'tweets/show.html.erb', locals: {
        tweet: Tweet.find(params[:id])
      }
    else
      render html: "Not Found", status: 404
    end
  end
end
