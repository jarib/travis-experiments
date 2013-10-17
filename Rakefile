require 'bundler/setup'
require 'selenium-webdriver'

task :default do
  ENV['PATH'] = [ENV['PATH'], File.expand_path("../chrome-linux", __FILE__)].join(':')
  d = Selenium::WebDriver.for :chrome
  d.get "http://google.com"
  p d.title
  d.quit
end