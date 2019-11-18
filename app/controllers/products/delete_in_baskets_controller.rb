class Products::DeleteInBasketsController < Products::ApplicationController
  def create
    basket = current_user.basket || current_user.create_basket
    product = Product.find(params[:product_id])
    # 中間レコード(basketの中身)削除
    basket_product = basket.basket_products.find_by(product_id: product.id)
    basket_product.destroy!

    redirect_to basket_path
  end
end
