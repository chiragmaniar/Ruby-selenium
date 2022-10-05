# Here is the sample code for send_keys and saving a screenshot

require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver = Selenium::WebDriver.for :fireforx

driver.get 'https://stackoverflow.com/questions/10040953/press-tab-and-then-enter-key-in-selenium-webdriver-with-ruby'

driver.save_screenshot("screenshot.png")
element = driver.find_element(:id, 'top-search').click

element.send_keys('ckm')
element.send_keys(:enter)

sleep(4)

driver.quit
