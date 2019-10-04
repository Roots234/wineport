class Admins::SalesRecordsController < Admins::ApplicationController
  def show
      @purchase_record_products = current_admin.purchase_record_products
  end
end