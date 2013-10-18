require 'bundler/setup'
require 'selenium-webdriver'

task :default do
  ENV['DISPLAY'] = ':99'

  profile = Selenium::WebDriver::Firefox::Profile.new
  profile.native_events = true
  profile.log_file = '/tmp/test.log'

  Selenium::WebDriver.for(:firefox, :profile => profile).quit
end