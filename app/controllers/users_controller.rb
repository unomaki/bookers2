class UsersController < ApplicationController


  def index
    @users = User.all
  end


  def show
    @user = User.find(params[:id])
    @book = @user.books.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(user.id)
  end



  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

end