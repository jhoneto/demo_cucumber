require 'faker'

Given(/^I launch web site$/) do
  visit('/')
end

And(/^I click New Student$/) do
  click_link('New Student')
end

#And(/^I enter register (.*)$/) do |value|
And(/^I enter register$/) do
  fill_in 'student[register]', with: Faker::Number.number(10)
end

And(/^I enter name$/) do
  fill_in 'student[name]', with: Faker::Name.name
end

And(/^I enter email$/) do
  fill_in 'student[email]', with: Faker::Internet.email
end

When(/^I submit form$/) do
  click_button('Create Student')
end

Then(/^I see success message$/) do
  expect(page).to have_content 'Student was successfully created.'
end
