require 'spec_helper'

feature 'User sees pageants' do
  scenario 'they should see their name' do
    sign_in_as_user_with_pageants
    expect_to_see @user.pageants.first.name
  end

end
