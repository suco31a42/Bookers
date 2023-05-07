class BooksController < ApplicationController
  
  def index
    @books = Book.all
    @book = Book.new
  end
  
  def create
    book = Book.new(params)
    book.save
    redirect_to book_path(@book.id)
  end
  
  def new
   
  end
  
  def show
  end

  def edit
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
