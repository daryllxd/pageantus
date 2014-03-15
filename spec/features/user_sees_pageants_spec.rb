require 'spec_helper'

feature 'User sees pageants' do
  context 'user has pageants' do 
    scenario 'they should see the pageants' do
      sign_in_as_user_with_pageants
      expect_to_see @user.pageants.first.name
    end
    
  end

  context 'user has no pageants' do
    scenario 'they should see add pageant if they dont have pageants' do 
      sign_in_as_user_without_pageants
      expect_to_see  'No pageants. Add your first!'
    end

    scenario 'they should be able to click to create a new pageant' do
      sign_in_as_user_without_pageants
      click_link 'No pageants. Add your first!'
      expect_to_see 'Pageant Creation Page'

    end
  end

end
