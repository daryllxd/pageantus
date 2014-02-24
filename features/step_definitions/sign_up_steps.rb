Given(/^I fill in the sign up form correctly$/) do
  @user = create(:user)
  fill_in "user_email", with: @user.email
  fill_in "user_password", with: @user.password
  click_button "Create User"
end

Then(/^I should see my profile page$/) do
  expect(page).to have_content(@user.email)
end
