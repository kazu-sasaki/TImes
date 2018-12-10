class BuysController < ApplicationController
  def index
    @carts = Cart.where(params[:id])
    @sum = 0
    @carts.each do |f|
      @sum += f.book.book_price
    end
  end


  def show
  end

  def create
    #決済処理
    sum = params["sum"].to_i
    Payjp.api_key = 'sk_test_00826025a691fb3986c25cab'
    payjp = Payjp::Charge.new(amount: sum, card: params['payjp-token'], currency: 'jpy')
    payjp.save
#購入情報の保存
    @carts = Cart.where(params[:id])
     @carts.each do |t|
     buy = Buy.new(book_id: t.book_id, user_id: current_user.id)
     buy.save
     end
#カートの削除
     @carts.each do |d|
     d.destroy
     end
    redirect_to root_path, notice: 'ありがとうございました。'
  end

  def pay
  end


  def update
  end

end
