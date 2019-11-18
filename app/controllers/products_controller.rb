class ProductsController < ApplicationController
  def index
    @products = Product.page(params[:page]).per(20)
    if @q = Product.ransack(params[:q])
      @products = @q.result.page(params[:page]).per(20)
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end
