class UsersController < ApplicationController
  def index
    render template: 'users/index.html.erb', locals: {
      users: User.all,
      tweets: Tweet.all.order(created_at: :desc).limit(25),
      user: User.new
    }
  end

  def show
    if User.exists?(params[:id])
      user = User.find(params[:id])
      render template: 'users/show.html.erb', locals: {
        user: user,
        users: User.all,
        handle: user.handle,
        tweets: Tweet.all.order(created_at: :desc),
        tweet: Tweet.new
      }
    else
      render html: "Not Found", status: 404
    end
  end

  def new
    render locals: {
      user: User.new
    }
  end

  def create
    user = User.new
    user.name = params[:user][:name]
    user.email = params[:user][:email]
    user.handle = "@" + params[:user][:handle]
    if user.save
      redirect_to "/"
    else
      flash[:alert] = "Could not be saved due to errors."
      render template: 'users/new.html.erb', locals: {
        user: user,
        tweets: Tweet.all.order(created_at: :desc)

      }
    end
  end

  def edit
    render locals: {
      user: User.find(params[:id])
    }
  end

  def update
    user = User.find(params[:id])
    user.name = params[:user][:name] if params[:user][:name].present?
    user.email = params[:user][:email] if params[:user][:email].present?
    user.handle = params[:user][:handle] if params[:user][:handle].present?
    if user.save
      redirect_to "/"
    else
      flash[:alert] = "Could not be edited due to errors."
      render template: 'user/edit.html.erb', locals: {
        user: user,
      }
    end
  end

  def destroy
    if User.exists?(params[:id])
      User.destroy(params[:id])
      user.save
      redirect_to user_path
    end
  end
end
