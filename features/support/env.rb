require 'rubygems'
require 'selenium-webdriver'
require 'capybara/cucumber'

#$driver = Selenium::WebDriver.for :firefox

Capybara.default_driver = :selenium
Capybara.app_host = "http://104.131.112.7:3000"
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new app, browser: :firefox
end
  
World(Capybara::DSL)
