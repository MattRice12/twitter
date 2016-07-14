class TweetsController < ApplicationController
  def index
    render template: 'tweets/index.html.erb', locals: {
      tweets: Tweet.all,
      users: User.all
    }
  end

  def show
    
  end
end
