require 'rails_helper'

RSpec.describe 'Markets Index Page', type: :feature, vcr: true do
  it 'displays the page title' do
    visit markets_path
    expect(page).to have_content('Markets')
  end

  it 'displays the correct market data' do
    visit markets_path
    expect(page).to have_content("14&U Farmers' Market")
    expect(page).to have_content('Washington')
    expect(page).to have_content('District of Columbia')
    expect(page).to have_content("2nd Street Farmers' Market")
    expect(page).to have_content('Amherst')
    expect(page).to have_content('Virginia')
  end

  it 'has a link to view more information for each market' do
    visit markets_path
    expect(page).to have_link('More Info')

  end
end
