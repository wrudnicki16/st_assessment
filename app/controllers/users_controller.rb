class UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    if @user.save
      login(@user)
      render "/users/proceed"
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end
  
  def new
    render :new
  end

  private

  def user_params
    params.require(:user).permit(:first, :last, :email)
  end
end
