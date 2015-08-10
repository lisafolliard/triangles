require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('checking type of triangle path', {:type => :feature}) do
  it('processes the user entry and returns type of triangle') do
    visit('/')
    fill_in('side1', :with => 3)
    fill_in('side2', :with => 3)
    fill_in('side3', :with => 3)
    click_button('Identify my triangle!')
    expect(page).to have_content("Your triangle is Equilateral")
  end
end
