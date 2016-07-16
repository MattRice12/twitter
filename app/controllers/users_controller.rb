class UsersController < ApplicationController
  def index
    render template: 'users/index.html.erb', locals: {
      users: User.all,
      tweets: Tweet.all.order(created_at: :desc)
    }
  end

  def show
    if User.exists?(params[:id])
      user = User.find(params[:id])
      render template: 'users/show.html.erb', locals: {
        user: user,
        handle: user.handle,
        tweets: Tweet.all.order(created_at: :desc),
        tweet: Tweet.new
      }
    else
      render html: "Not Found", status: 404
    end
  end
end
