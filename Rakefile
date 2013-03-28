require 'selenium-webdriver'

task :default do
  ENV['DISPLAY'] = ":99"
  $DEBUG = true

  Selenium::WebDriver::Chrome.driver_path = File.expand_path('chrome-linux/chromedriver')
  Selenium::WebDriver::Chrome.path = File.expand_path('chrome-linux/chrome')

  chrome = Selenium::WebDriver.for(:chrome)

  begin
    chrome.get "http://google.com"
    window = chrome.manage.window

    p :size => window.size, :position => window.position
  ensure
    chrome.quit
  end

end