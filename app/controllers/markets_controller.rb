class MarketsController < ApplicationController
  def index
    response = Faraday.get('http://localhost:3000/api/v0/markets')
    @markets = JSON.parse(response.body)
  end
end
