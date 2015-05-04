require "selenium-webdriver"
puts 'start'
path = `echo $PATH`
puts path.split(':').sort
driver = Selenium::WebDriver.for :chrome
puts 'done'