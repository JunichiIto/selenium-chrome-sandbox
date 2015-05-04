require "selenium-webdriver"

# See https://code.google.com/p/selenium/source/browse/rb/lib/selenium/webdriver/common/platform.rb#138
def find_binary(*binary_names)
  paths = ENV['PATH'].split(File::PATH_SEPARATOR)

  binary_names.each do |binary_name|
    paths.each do |path|
      exe = File.join(path, binary_name)
      puts "Checking #{exe}, Exists?=#{File.exist?(exe)}, executable?=#{File.executable?(exe)}"
      return exe if File.executable?(exe)
    end
  end

  nil
end

puts 'start'

# See https://code.google.com/p/selenium/source/browse/rb/lib/selenium/webdriver/chrome/service.rb#19
path = find_binary "chromedriver"
if path
  puts "FOUND #{path}"
else
  puts "NOT FOUND!!"
end

driver = Selenium::WebDriver.for :chrome

puts 'done'