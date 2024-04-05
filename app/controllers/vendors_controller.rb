class VendorsController < ApplicationController
  def show
    vendor_id = params[:id]
    vendor_service = VendorService.new
    vendor_data = vendor_service.find_vendor(vendor_id)
    @vendor = Vendor.new(vendor_data)
  end
end
