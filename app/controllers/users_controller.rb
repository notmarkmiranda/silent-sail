class UsersController < ApplicationController
  def show; end

  def new
    @user = User.new
  end

  def save_email
    session[:email] = params[:user][:email]
    redirect_to new_password_path
  end

  def new_password
    @user = User.new(email: session[:email])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to dashboard_path, notice: "User created successfully."
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :password)
  end
end
