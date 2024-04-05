class MarketService
  def initialize
    @conn = Faraday.new(url: "http://localhost:3000/api/v0")
  end

  def all_markets
    response = @conn.get("markets")
    JSON.parse(response.body)['data'].map { |market_attributes| Market.new(market_attributes) }
  end

  def find_market(market_id)
    response = @conn.get("markets/#{market_id}")
    market_data = JSON.parse(response.body)['data']
    Market.new(market_data)
  end
end
