# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
	fill_in 'Author', with: 'J. K. Rowling'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Including a Price', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
	fill_in 'Price', with: 5
	fill_in 'Title', with: 'harry potter'
	fill_in 'Author', with: 'J. K. Rowling'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Including a Date', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
	fill_in 'Publish_Date', with: DateTime.current.strftime("%m%d%Y\t%I%M%P")
	fill_in 'Price', with: 5
	fill_in 'Title', with: 'harry potter'
	fill_in 'Author', with: 'J. K. Rowling'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end