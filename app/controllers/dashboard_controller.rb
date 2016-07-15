class DashboardController < ApplicationController
  before_filter :disable_nav

  def index
    render template: 'dashboard/index.html.erb'
  end

end
