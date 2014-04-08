require 'spec_helper'

describe 'when a visitor visits goes to the homepage' do
  context 'they page they see should have header with links' do
    it 'has "Home | HN Clone" as the title' do
      visit '/'
      page.should have_title "Home | HN Clone"
    end
  end

  context 'the page should have links' do
    it ' has link "Fake Hacker News that take user to homepage' do
      visit '/'
      page.should have_link "Fake Hacker News"
    end
    it 'the "Fake Hacker News" link returns to homepage' do
      visit '/'
      click_link "Fake Hacker News"
       expect(page).to have_title 'Home | HN Clone'
    end
    it 'goes to the "New link" page when "new" is clicked' do
      visit '/'
      click_link "new"
       expect(page).to have_title 'New Link | HN Clone'
    end
  end

  context 'the page they see if a link has been created' do
    it 'is the first link on the page' do
      test_link = FactoryGirl.create :link
      visit '/'
      page.should have_content test_link.description
    end
  end
end

