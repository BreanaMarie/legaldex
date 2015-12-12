class WelcomeController < ApplicationController
  def index
    @user = User.new
    @current_user = current_user
    render ('index')
  end
end
