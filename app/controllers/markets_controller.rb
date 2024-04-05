class MarketsController < ApplicationController
  def index
    market_service = MarketService.new
    @markets = market_service.all_markets
  end

  def show
    market_id = params[:id]
    market_service = MarketService.new
    @market = market_service.find_market(market_id)
  end
end
