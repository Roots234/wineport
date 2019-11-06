class Admins::DashboardsController < Admins::ApplicationController
  
  
  def index
    
      sold_products = Admin.last.products.joins(:purchase_record_products)
      @total = sold_products.sum(:price)
  end
  
  def sales
      sold_products = Admin.last.products.joins(:purchase_record_products)
      @total = sold_products.sum(:price)
  end
end