class ProductsController < ApplicationController
  
  def index
    @products = Product.all
  end
  
  def new
    @product = Product.new
  end
  
  def show
    @product = Product.find(params[:id])
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path, notice: '商品を保存しました'
    else
      flash[:error] = '商品の保存に失敗しました'
      render :new
    end
  end

  private
  def product_params
    params.require(:product).permit(
      :name, 
      :description, 
      :price, 
      :image 
      )
  end
  
end
