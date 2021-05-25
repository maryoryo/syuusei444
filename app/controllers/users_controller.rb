class UsersController < ApplicationController
  
  before_action :current_user, only: [:edit, :update]
  
  
  def index
    @users = User.all
    @book_new = Book.new
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @user_books = @user.books
    @book_new = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(users_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end
  
  
  protected
  
  def users_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
  
  def current_user
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to user_path(current_user.id)
    end
  end
  
  
end
