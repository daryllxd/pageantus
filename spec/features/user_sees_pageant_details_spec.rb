require 'spec_helper'

feature 'User sees pageant details:' do
  context 'There is an active pageant.' do
    scenario 'they should see the active round' do
      sign_in_as_user_with_active_pageant
      expect(page).to have_content(@user.active_pageant.client)
      expect(page).to have_content(@user.active_pageant.location)
      #expect(page).to have_content(@user.pageants.rounds.active)

    end

    context 'There is no active pageant' do
      scenario 'they should see add pageant if they dont have pageants' do
        sign_in_as_user_without_pageants

        expect(page).to have_content(@user.active_pageant.location)
      end

    end

  end
end
