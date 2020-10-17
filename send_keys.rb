# Here is the sample code for send_keys and saving a screenshot
# Adding more optimised code

require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
URL = 'https://stackoverflow.com/questions/10040953/press-tab-and-then-enter-key-in-selenium-webdriver-with-ruby'
SCREENSHOT_NAME = 'screenshot.png'
SEARCH = 'top-search'
TYPE_LETTERS = 'thesearesomelettersforsendkeys'

driver.get URL

driver.save_screenshot(SCREENSHOT_NAME) # Making global variable for saving the screenshot name
element = driver.find_element(:id, SEARCH).click

element.send_keys(TYPE_LETTERS)

element.send_keys(:enter) # This can be avoided

element.send_keys(:enter) # This enter can be added in a more optimised way, simply by adding a number or symbol


sleep(4)

driver.quit
