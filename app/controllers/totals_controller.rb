class TotalsController < ApplicationController
  def index
    @comment = Comment.new
    @total = Buy.where(user_id: current_user.id)
   
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    @comment.save
  end

  def destroy
  end

  private
  def buy_params
    params.require(:buy).permit(books_attributes:[:id, :book_title]
   )
end
end
