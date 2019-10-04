class ProductsController < ApplicationController
  
  def index
    @products = Product.all
    if @q = Product.ransack(params[:q])
      @products = @q.result
    end
  end
  
  
  def show
    @product = Product.find(params[:id])
  end
  
  
end
