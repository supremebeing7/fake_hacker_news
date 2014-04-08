require 'spec_helper'

describe 'when a visitor goes to the homepage' do
  before { visit root_path }

  context 'the page they see should have header with links' do
    it 'has "Home | HN Clone" as the title' do
      page.should have_title "Home | HN Clone"
    end
  end

  context 'the page should have links' do
    it 'has link "Fake Hacker News" that take user to homepage' do
      page.should have_link "Fake Hacker News"
    end
    it 'returns to the homepage when "Fake Hacker News" is clicked' do
      click_link "Fake Hacker News"
       expect(page).to have_title 'Home | HN Clone'
    end
    it 'goes to the "New link" page when "new" is clicked' do
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

  context 'the page changes when upvote is clicked' do
    it 'it adds a vote to a link when upvote symbol is clicked' do
      test_link = FactoryGirl.create :link
      visit '/'
      click_button "\u25B2"
      test_link.vote_count.should eq 2
    end
  end
end

