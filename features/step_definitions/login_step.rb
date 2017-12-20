welcome_page = WelcomePage.new


Given(/^I launch web site$/) do
  visit('/')
end

And(/^I click responsible login page$/) do
  click_link('Acesso Pais')
end

And(/^I enter username$/) do
  find_by_id('responsible_login').set('00777936410')
  
end

And(/^I enter password$/) do
  find_by_id('responsible_password').set('12345678')
end

When(/^I click Acessar button$/) do
  click_button('Entrar')
end

Then(/^I see Home page$/) do
  expect(page).to have_content 'Boletos'
end