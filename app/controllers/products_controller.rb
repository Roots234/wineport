class ProductsController < ApplicationController
  
  def index
    
    @products = Product.page(params[:page]).per(30)
    if @q = Product.ransack(params[:q])
      @products = @q.result.page(params[:page]).per(30)
    end
  end
  
  
  def show
    @product = Product.find(params[:id])
  end
  
  
end
