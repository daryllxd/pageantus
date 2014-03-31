require 'spec_helper'

feature 'User activates pageant' do
  before do
    sign_in_as_user_with_pageants
  end

  scenario 'No pageants activated, able to activate a pageant' do
    pageant = @user.pageants.last
    within(:css, "#pageant_#{pageant.id}") do
      click_link 'Activate'
    end

    expect(page).to have_content("Pageant #{pageant.name} is now starting!")

  end

end
