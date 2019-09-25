class ChargesController < ApplicationController
  def create
    product_ids = params[:product_ids].map(&:to_i)
    products = current_user.basket.products.where(id: product_ids)
    @total = products.sum(:price)
    
    ActiveRecord::Base.transaction do
      basket_products = current_user.basket.basket_products.where(product_id: product_ids)
      basket_products.each(&:destroy!)
    
      purchase_record = current_user.purchase_record || current_user.create_purchase_record
      ids = product_ids.map { |id| { product_id: id } }
      purchase_record.purchase_record_products.create!(ids)
    end
    
    redirect_to root_path, notice: '決済が完了しました'
    
    
  end
end
