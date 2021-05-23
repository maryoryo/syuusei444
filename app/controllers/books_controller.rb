class BooksController < ApplicationController
  def index
    @user = User.find(params[:id])
    @users = User.all
    @users_book = @user.book
    @book_new = Book.new
    @books = Book.all
    # @book = Book.find(params[:id])
  end

  def create
    
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
