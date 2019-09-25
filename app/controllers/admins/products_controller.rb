class Admins::ProductsController < Admins::ApplicationController
  def new
    @product = current_admin.products.build
  end

  def create
    @product = current_admin.products.build(product_params)
    if @product.save
      redirect_to root_path, notice: '商品を登録しました'
    else
      flash[:error] = '商品の登録に失敗しました'
      render :new
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :image)
  end
end