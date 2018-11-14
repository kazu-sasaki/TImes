class BooksController < ApplicationController
  def index
    if user_signed_in?
     @userh = User.find(current_user.id)
    end
    @books = Book.all
  end

  def show
    if user_signed_in?
     @userh = User.find(current_user.id)
    end
    @book = Book.find(params[:id])
    @chapter = Chapter.where(book_id: @book.id)
    @sector = Sector.where(chapter_id: @chapter.ids)
    @comments = Comment.where(book_id: @book.id).order(id: :desc)
  end

  def new
    if user_signed_in?
     @userh = User.find(current_user.id)
    end
    @book = Book.new
    @chapter = @book.chapters.build
    @sector = @chapter.sectors.build
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_path
  end

  def edit
    if user_signed_in?
     @userh = User.find(current_user.id)
    end
    @book = Book.find(params[:id])
    @chapter = Chapter.where(book_id: @book.id)
    @sector = Sector.where(chapter_id: @chapter.ids)
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
  end

  def destroy
    @book = Book.find(params[:id])
    @chapter = Chapter.where(book_id: @book.id)
    @sector = Sector.where(chapter_id: @chapter.ids)
    @book.destroy
    redirect_to books_path
  end

  private
  def book_params
      params.require(:book).permit(:book_title, :author, :category, :book_image, :book_price, :summary,
         chapters_attributes:[:id, :_destroy, :chapter_number,:chapter_title,
         sectors_attributes:[:id, :_destroy, :sector_number, :sector_body, :sector_image]]
     )
  end
end