require 'spec_helper'

feature 'User logs in' do
  scenario 'they should see their name' do
    sign_in_as_user
    expect_to_see @user.email_address
  end

  scenario 'they should see their photo' do
    sign_in_as_user
    expect_to_see_image @user.profile_picture_url
  end

  scenario 'Invalid user should not be able to log in' do
    sign_in_with('invalid@email.com', 'invalid')
    expect(page).to_not have_content('invalid@email.com')
  end
end
