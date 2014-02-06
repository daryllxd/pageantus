Given(/^I visit the home page$/) do
  visit root_path
end

Given(/^I fill in the sign up form correctly$/) do
  @user = FactoryGirl.create(:user)
  fill_in "username", with: @user.username
  fill_in "password", with: @user.password
  click_submit
end

Then(/^I should see my profile page$/) do
  expect(page).to have_content("name")
end
