require 'capybara/cucumber'
require 'selenium/webdriver'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app,
    browser: :chrome,
    desired_capabilities: {
      "chromeOptions" => {
        "args" => %w{ window-size=1920,1080 }
      }
    }
  )
end
Capybara.javascript_driver = :chrome
