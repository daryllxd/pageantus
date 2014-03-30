require 'spec_helper'

feature 'User signs up' do
  scenario 'Is able to Sign Up' do

    @user = build(:user)
    visit root_path
    within(:css, '.sign-up') do
      fill_in 'Email', with: @user.email
      fill_in 'Password', with: @user.password
      click_button 'Sign Up'
    end

    expect(page).to have_content("Welcome")

  end
end
