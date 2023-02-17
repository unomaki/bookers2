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
  
  def destroy
    book = Book.find(params[:id])  # データ（レコード）を1件取得
    Book.destroy  # データ（レコード）を削除
    redirect_to '/books'  # 投稿一覧画面へリダイレクト  
  end
  
  private
def book_params
params.require(:book).permit(:title, :body)
end

end
