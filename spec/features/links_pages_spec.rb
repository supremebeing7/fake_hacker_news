require 'spec_helper'

describe Link do
  context 'creating' do
    it 'lets a user create a link' do
      link = FactoryGirl.build :link
      visit new_link_path
      fill_in 'Description', with: link.description
      fill_in 'Url', with: link.url
      fill_in 'User name', with: link.user_name
      click_button 'Create Link'
      page.should have_content link.description
      page.should have_content link.shorten_url
      page.should have_content link.vote_count
      page.should have_content link.user_name
    end
  end
end
