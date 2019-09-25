class Admins::DashboardsController < Admins::ApplicationController
  def index
      sold_products = self.products.joins(:purchase_record_products)
  end
end