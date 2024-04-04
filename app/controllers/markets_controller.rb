class MarketsController < ApplicationController
  def index
    market_service = MarketService.new
    @markets = market_service.all_markets
  end

  def show
    market_id = params[:id]
    market_service = MarketService.new
    market_data = market_service.find_market(market_id)
    @market = Market.new(market_data)
  end
end
