class ApplicationController < ActionController::Base
  def login(user)
    @current_user = user
  end
end
