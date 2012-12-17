require 'spec_helper'

feature 'Github OAuth Authentication', :js do
  use_vcr_cassette 'github_oauth', :match_requests_on => [:uri], :decode_compressed_response => true

  scenario 'Github link redirects to the Github OAuth url' do
    visit root_path

    click_link 'Github'
    current_url.should match /^https:\/\/github.com\/login/
  end

  scenario 'Handling a Github callback' do
    visit oauth2_callback_path(:provider => :github, :code => 'test-auth-code')

    current_path.should eq dashboard_path
    page.should have_content 'test@example.com'
  end
end
