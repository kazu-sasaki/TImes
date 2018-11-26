class CartsController < ApplicationController
  def index
    @carts = Cart.where(params[:id])
  end

  def create
    cart = Cart.new(book_id: params[:book_id], user_id: current_user.id)
    cart.save
    redirect_to carts_path(current_user)
  end

  def destroy
    cart = Cart.find(params[:id])
    cart.destroy
    redirect_to carts_path
  end


  private
   def cart_params
       params.require(:cart).permit(:book_id, :user_id)
   end
end