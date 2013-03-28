require 'selenium-webdriver'

task :default do
  ENV['DISPLAY'] = ":99"
  $DEBUG = true

  Selenium::WebDriver::Chrome.driver_path = File.expand_path('chrome-linux/chromedriver')
  Selenium::WebDriver::Chrome.path = File.expand_path('chrome-linux/chrome')
  Selenium::WebDriver.for(:chrome).quit
end