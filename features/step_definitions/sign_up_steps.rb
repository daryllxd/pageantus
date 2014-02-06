Given(/^I visit the home page$/) do
  visit root_path
end

Given(/^I fill in the sign up form correctly$/) do
  @user = create(:user)
  fill_in "username", @user.username
  fill_in "password", @user.password
end

Then(/^I should see my profile page$/) do
  expect(page).to have_content(@user.name)
end
