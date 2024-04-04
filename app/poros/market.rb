class Market
  attr_reader :id, :name, :street_address, :city_state_zip, :vendors

  def initialize(data)
    @id = data['id']
    @name = data['attributes']['name']
    @street_address = format_street_address(data['attributes'])
    @city_state_zip = format_city_state_zip(data['attributes'])
    @vendors = fetch_vendors(data['id'])
  end

  private

  def format_street_address(attributes)
    street_address = "#{attributes['street']}"
  end

  def format_city_state_zip(attributes)
    city_state_zip = "#{attributes['city']}, #{attributes['state']} #{attributes['zip']}"
  end

  def fetch_vendors(market_id)
    response = Faraday.get("http://localhost:3000/api/v0/markets/#{market_id}/vendors")
    JSON.parse(response.body)['data']
  end
end
