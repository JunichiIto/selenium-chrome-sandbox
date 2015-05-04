# selenium-chrome-sandbox

Check if Chrome driver can be found.

See http://ja.stackoverflow.com/q/9805/85

## How to run

```
bundle install
PATH=$PATH:./bin bundle exec ruby ./chrome.rb
# Or
bundle exec ruby ./chrome.rb
```

### OK

```
start
Checking /usr/local/sbin/chromedriver, Exists?=false, executable?=false
Checking /usr/local/bin/chromedriver, Exists?=false, executable?=false
.
.
.
Checking ./bin/chromedriver, Exists?=true, executable?=true
FOUND ./bin/chromedriver
done
```


### NG

```
start
Checking /usr/local/sbin/chromedriver, Exists?=false, executable?=false
Checking /usr/local/bin/chromedriver, Exists?=false, executable?=false
.
.
.
Checking /sbin/chromedriver, Exists?=false, executable?=false
NOT FOUND!!
/Users/jit/.rbenv/versions/2.0.0-p598/lib/ruby/gems/2.0.0/gems/selenium-webdriver-2.45.0/lib/selenium/webdriver/chrome/service.rb:20:in `executable_path': Unable to find the chromedriver executable. Please download the server from http://chromedriver.storage.googleapis.com/index.html and place it somewhere on your PATH. More info at http://code.google.com/p/selenium/wiki/ChromeDriver. (Selenium::WebDriver::Error::WebDriverError)
        from /Users/jit/.rbenv/versions/2.0.0-p598/lib/ruby/gems/2.0.0/gems/selenium-webdriver-2.45.0/lib/selenium/webdriver/chrome/service.rb:33:in `default_service'
        from /Users/jit/.rbenv/versions/2.0.0-p598/lib/ruby/gems/2.0.0/gems/selenium-webdriver-2.45.0/lib/selenium/webdriver/chrome/bridge.rb:14:in `initialize'
        from /Users/jit/.rbenv/versions/2.0.0-p598/lib/ruby/gems/2.0.0/gems/selenium-webdriver-2.45.0/lib/selenium/webdriver/common/driver.rb:37:in `new'
        from /Users/jit/.rbenv/versions/2.0.0-p598/lib/ruby/gems/2.0.0/gems/selenium-webdriver-2.45.0/lib/selenium/webdriver/common/driver.rb:37:in `for'
        from /Users/jit/.rbenv/versions/2.0.0-p598/lib/ruby/gems/2.0.0/gems/selenium-webdriver-2.45.0/lib/selenium/webdriver.rb:67:in `for'
        from ./chrome.rb:27:in `<main>'
```

## Additional information

chromedriver was downloaded from here: http://chromedriver.storage.googleapis.com/index.html?path=2.15/

## License

MIT license.