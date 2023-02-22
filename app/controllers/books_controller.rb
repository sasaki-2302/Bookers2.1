class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.new
    @books = Book.find(params[:id])
  end

  private
  def book_params
    params.require(:book).permit(:title, :body, :image)
  end
end