# frozen_string_literal: true

# Here is the sample code for send_keys and saving a screenshot
# Adding more optimised code
# Ruby 1.9 and newer ship with RubyGems built-in, so there is no real need to require 'rubygems'
require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driverFirefox = Selenium::WebDriver.for :firefox # Added driver for firefox

driver = driver;

URL = 'https://stackoverflow.com/questions/10040953/press-tab-and-then-enter-key-in-selenium-webdriver-with-ruby'
SCREENSHOT_NAME = 'screenshot.png'
SEARCH = 'top-search'
TYPE_LETTERS = 'thesearesomelettersforsendkeys'

driver.get URL

driver.save_screenshot(SCREENSHOT_NAME) # Making global variable for saving the screenshot name
element = driver.find_element(:id, SEARCH)
element.click

element.send_keys(TYPE_LETTERS)

element.send_keys(:enter) # This can be avoided

element.send_keys(:enter) # This enter can be added in a more optimised way, simply by adding a number or symbol

sleep(4) # Added sleep here just to see the automation, else can be avoided

driver.quit
