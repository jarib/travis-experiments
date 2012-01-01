require 'rubygems'
require 'selenium-webdriver'

task :default do
  ENV['DISPLAY'] = ":99"
  $DEBUG = true
  Selenium::WebDriver.for(:chrome).quit
end