require 'spec_helper'

feature 'User sees pageant details ' do
  context 'user sees pageant candidates' do
    scenario 'they should see the pageants' do
      sign_in_as_user_with_pageants
      expect(page).to have_content(@user.pageants.first.name)
    end

  end

  context 'user has no pageants' do
    scenario 'they should see add pageant if they dont have pageants' do
      sign_in_as_user_without_pageants
      expect(page).to have_content('No pageants. Add your first!')
    end

    scenario 'they should be able to click to create a new pageant' do
      sign_in_as_user_without_pageants
      click_link 'No pageants. Add your first!'
      fill_in_create_pageant_form
      expect(page).to have_content(@pageant.name)
    end
  end

  def fill_in_create_pageant_form
    @pageant = create(:pageant)
    fill_in_create_pageant_form_fields(@pageant)
    click_button 'Add Pageant'
  end

  def fill_in_create_pageant_form_fields(pageant)
    within(:css, '.create-book') do
      fill_in 'Name', with: @pageant.name
    end
  end

end
