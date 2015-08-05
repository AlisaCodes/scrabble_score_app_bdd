require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble score path', {:type => :feature}) do
  it('processes the user entry and returns it with a number value') do
    visit('/')
    fill_in('word', :with => "a")
    click_button('Send')
    expect(page).to have_content('1')
  end
end
