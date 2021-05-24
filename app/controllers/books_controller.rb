class BooksController < ApplicationController
  
  before_action :current_user, only: [:edit, :update] 
  
  
  def index
    @user = current_user
    @book_new = Book.new
    @books = Book.all
    
  end

  def create
    @book = Book.new(books_params)
    @book.user_id = current_user.id
    if @book.save
      flash[:notice] = "You have created book successfully."
      redirect_to book_path(@book.id)
    else
      render books_path
    end
  end

  def show
    @book = Book.find(params[:id])
    @book_new = Book.new
    @book_user = @book.user
    @user = @book.user
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(books_params)
      flash[:notice] = "You have updated book successfully."
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end
  
  
  protected
  
  def books_params 
    params.require(:book).permit(:title, :body)
  end
  
  def current_user
    @book = Book.find(params[:id])
    unless @book.user == current_user
      redirect_to books_path
    end
  end
  
  
end
