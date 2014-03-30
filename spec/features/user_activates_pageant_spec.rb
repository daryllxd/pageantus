require 'spec_helper'

feature 'User activates pageant' do
  before do
    sign_in_as_user_with_pageants
  end

  scenario 'No pageants activated, able to activate a pageant' do
    pageant = @user.pageants.first.id
    within(:css, "#pageant_#{pageant}") do
      click_link 'Activate'
    end


  end

end
