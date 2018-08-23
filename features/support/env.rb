require 'rubygems'
require 'selenium-webdriver'
require 'capybara/cucumber'

Capybara.default_driver = :selenium
Capybara.app_host = "https://democucumber.herokuapp.com"
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new app, browser: :chrome
end

World(Capybara::DSL)
