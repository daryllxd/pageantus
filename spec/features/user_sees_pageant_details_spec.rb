require 'spec_helper'

feature 'User sees pageant details:' do
  context 'There is an active pageant.' do
    scenario 'they should see the active round' do
      sign_in_as_user_with_active_pageant
      expect(page).to have_content(@user.active_pageant.client)
      expect(page).to have_content(@user.active_pageant.location)
      #expect(page).to have_content(@user.pageants.rounds.active)

    end

    context 'user has no pageants' do
      pending
      scenario 'they should see add pageant if they dont have pageants' do
        sign_in_as_user_without_pageants
        expect(page).to have_content('No pageants. Add your first!')
      end

      scenario 'they should be able to click to create a new pageant' do
        pending
        sign_in_as_user_without_pageants
        click_link 'No pageants. Add your first!'
        fill_in_create_pageant_form
        expect(page).to have_content(@pageant.name)
      end
    end

  end
end
