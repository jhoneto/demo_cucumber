Given(/^I launch web site$/) do
  visit('/')
end

And(/^I click New Student$/) do
  click_link('New Student')
end

And(/^I enter register (.*)$/) do |value|
  fill_in 'student[register]', with: value
end

And(/^I enter name (.*)$/) do |value|
  fill_in 'student[name]', with: value
end

And(/^I enter email (.*)$/) do |value|
  fill_in 'student[email]', with: value
end

When(/^I submit form$/) do
  click_button('Create Student')
end

Then(/^I see success message$/) do
  expect(page).to have_content 'Student was successfully created.'
end
