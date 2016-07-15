class UsersController < ApplicationController
  def index
    render template: 'users/index.html.erb', locals: {
      users: User.all,
      tweets: Tweet.all
    }
  end

  def show
    if User.exists?(params[:id])
      render template: 'users/show.html.erb', locals: {
        user: User.find(params[:id])
      }
    else
      render html: "Not Found", status: 404
    end
  end
end
