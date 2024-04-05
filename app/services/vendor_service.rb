class VendorService
  def initialize
    @conn = Faraday.new(url: "http://localhost:3000/api/v0")
  end

  def find_vendor(vendor_id)
    response = @conn.get("vendors/#{vendor_id}")
    JSON.parse(response.body)['data']
  end
end
