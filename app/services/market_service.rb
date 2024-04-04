class MarketService
  def initialize
    @conn = Faraday.new(url: "http://localhost:3000/api/v0")
  end

  def all_markets
    response = @conn.get("markets")
    JSON.parse(response.body)
  end

  def find_market(market_id)
    response = @conn.get("markets/#{market_id}")
    JSON.parse(response.body)['data']
  end
end
