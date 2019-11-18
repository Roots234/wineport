class ChargesController < ApplicationController
  def create
    # 合計金額を算出
    product_ids = params[:product_ids].map(&:to_i)
    products = current_user.basket.products.where(id: product_ids)
    @total = products.sum(:price)

    ActiveRecord::Base.transaction do
      # 中間レコードを１つずつ削除（失敗時は例外を吐く）
      basket_products = current_user.basket.basket_products.where(product_id: product_ids)
      basket_products.each(&:destroy!)
      # purchase_recordのtableへデータ書き込み
      purchase_record = current_user.purchase_record || current_user.create_purchase_record
      ids = product_ids.map { |id| { product_id: id } }
      purchase_record.purchase_record_products.create!(ids)
      SampleMailer.send_when_pay(current_user, @total).deliver
    end

    redirect_to root_path, notice: '決済が完了しました'
  end
end
