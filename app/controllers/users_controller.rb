class UsersController < ApplicationController
  def index
    render template: 'user/index.html.erb', locals: {
      users: User.all,
      tweets: Tweet.all
    }
  end

  def show
  end
end
