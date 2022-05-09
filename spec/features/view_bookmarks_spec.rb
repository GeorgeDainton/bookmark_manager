require 'spec_helper'
feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit ('/')
    expect(page).to have_content "Bookmark Manager"
  end
  scenario 'A user can see bookmarks' do
    visit('/bookmarks')

    expect(page).to have_content "https://www.makersacademy.com"
    expect(page).to have_content "https://www.destroyallsoftware.com"
    expect(page).to have_content "https://www.google.com"
  end
end
