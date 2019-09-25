class BasketsController < ApplicationController

  before_action :authenticate_user!

  def show
    basket = current_user.basket || current_user.create_basket
    @products = basket.products
    @total_price = @products.sum(:price)
  end
end