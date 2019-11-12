class SalesRecordsController < ApplicationController
    def show
        @purchase_record_products = current_user.purchase_record.purchase_record_products
    end
end