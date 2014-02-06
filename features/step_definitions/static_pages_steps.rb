Given(/^I visit the FAQ page$/) do
  visit faq_path
end

Given(/^I visit the About page$/) do
  visit about_path
end

Then(/^I should see the FAQ page$/) do
  expect(page).to have_content "FAQ"
end

Then(/^I should see the About page$/) do
  expect(page).to have_content "About"
end
