class Admins::ProductsController < Admins::ApplicationController
  
  #他テーブルと関連付けがあるものは慣例的にbuild。build=new
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
  
  def edit
    @product = Product.find(params[:id])
  end
  
  
  def update
    @product = Product.find(params[:id])
    
    if @product.update_attributes(
      name: product_params[:name],
      description: product_params[:description],
      price: product_params[:price],
      image: product_params[:image]
      )
      flash[:notice] = '保存に成功'
      redirect_to root_path 
    else
      flash[:notice] = '保存に失敗'
      redirect_to edit_admins_product_path
    end
  end
  
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "商品を削除しました"
    redirect_to root_path
  end
  
  

#不正な値を受け取らないよう、permitに許可する値を記載
#private=class外では呼び出せない
  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :image)
  end
end