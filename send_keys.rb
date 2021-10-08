# frozen_string_literal: true

# Here is the sample code for send_keys and saving a screenshot
# Adding more optimised code
# Ruby 1.9 and newer ship with RubyGems built-in, so there is no real need to require 'rubygems'
require 'rubygems'
require 'selenium-webdriver'

driverChrome = Selenium::WebDriver.for :chrome
driverFirefox = Selenium::WebDriver.for :firefox # Added driver for firefox
driverSafari = Selenium::WebDriver.for :safari # Added driver for safari

# Change your driver here to support different drivers
driver = driverChrome;

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

wait = Selenium::WebDriver::Wait.new(:timeout => 5) # Added wait here to replicate real scenario of searching in stackoverflow

driver.quit
