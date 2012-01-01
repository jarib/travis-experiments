require 'rubygems'
require 'selenium-webdriver'

task :default do
  ENV['DISPLAY'] = ":99"
  ENV['PATH'] += ":#{File.expand_path('chrome-linux')}"

  $DEBUG = true
  Selenium::WebDriver.for(:chrome).quit
end