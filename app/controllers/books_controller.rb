class BooksController < ApplicationController
   def new
    @book = Book.new  
   end
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end
    
  def index
    @book = Book.all
  end

  def show
    @book = Book.find(params[:id])
      
  end
    
  # def create
  #   book = Book.find(params[:book_id])
  #   favorite = current_user.favorites.new(post_image_id: post_image.id)
  #   favorite.save
  #   redirect_to book_path(post_image)
  # end

  def destroy
    @book = Book.find(params[:Book_id])
    favorite = current_user.favorites.find_by(book_id: book.id)
    favorite.destroy
    redirect_to book_path(post_image)
  end

  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :opinion)
  end
end
