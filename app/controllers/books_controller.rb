class BooksController < ApplicationController


  def create
    book = Book.new(book_id_params)
    book.save
    redirect_to '/top'
  end

  def new
  end

  def index
  end

  def show
  end

  def edit
   @book = Book.find(params[:id])
  end
  
  private
def book_params
params.require(:book).permit(:title, :body)
end

end
