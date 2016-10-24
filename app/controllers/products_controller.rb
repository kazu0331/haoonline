class ProductsController < ApplicationController
  #before_action :move_to_index, except: :index

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @review = Review.new
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def purchase
    webpay = WebPay.new(WEBPAY_SECRET_KEY)
    #webpay.charge.create(currency: 'jpy', amount: 1000, card: params['webpay-token'])
  end

end
