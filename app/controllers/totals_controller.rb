class TotalsController < ApplicationController
  def index
    @comment = Comment.new
    @total = Total.where(user_id: current_user.id)
  end

  def create
    @book = Book.new(book_params)
    @comment.save
  end

  def destroy
  end

  private
  def comment_params
      params.require(:comment).permit(:comment,
     )
  end
end
