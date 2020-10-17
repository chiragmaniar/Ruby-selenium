# Here is the sample code for send_keys and saving a screenshot
# Adding more optimised code

require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
URL = 'https://stackoverflow.com/questions/10040953/press-tab-and-then-enter-key-in-selenium-webdriver-with-ruby'
SCREENSHOT_NAME = 'screenshot.png'

driver.get URL

driver.save_screenshot(SCREENSHOT_NAME) # Making global variable for saving the screenshot name
element = driver.find_element(:id, 'top-search').click

element.send_keys('ckm')
element.send_keys(:enter)

sleep(4)

driver.quit
