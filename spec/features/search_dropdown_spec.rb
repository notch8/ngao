# frozen_string_literal: true

RSpec.describe 'Search Dropdown', type: :feature do
  context 'on regular search queries' do
    it 'lists expected fields' do
      visit search_catalog_path q: 'a brief', search_field: 'all_fields'
      within '#search_field' do
        expect(page).to have_content 'All Fields'
        expect(page).to have_content 'Keyword'
        expect(page).to have_content 'Name'
        expect(page).to have_content 'Place'
        expect(page).to have_content 'Subject'
        expect(page).to have_content 'Title'
        expect(page).to have_content 'Unit ID'
      end
    end
  end
end
