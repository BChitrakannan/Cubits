require 'capybara/cucumber'

#Capybara.javascript_driver = :chrome

Given(/^I navigate to the homepage$/) do
  Capybara.default_driver =:chrome

    visit ('https://cubits.com/')
end

And(/^I click on Sign in link$/) do
  find(:xpath, '//a[@href="/users/sign_in"]').click
end

Then(/^I enter the email id (.*)$/) do |email|
    fill_in('user_email', :with=>email)
end

And(/^I enter the password (.*)$/) do |password|
  fill_in('user_password', :with=>password)
end

When(/^I click on the login button$/) do
    find(:xpath, '//button').click
end

Then(/^I should see the welcome text and user profile$/) do
  page.should have_content('WELCOME')
  page.should have_xpath('//div[@class="hprofile__name"]')
  page.should have_content('ACTIVITY')
  page.should have_content('SEND MONEY')
  page.should have_content('REQUEST MONEY')
  page.should have_content('BUY BITCOIN')
  page.should have_content('SELL BITCOIN')


end

Then(/^I should see the error message$/) do
  page.should have_xpath('//span[@class="alert-msg title"]')

end

Then(/^I should see all the UI elements$/) do
  page.should have_xpath('//input[@id="user_email"]')
  page.should have_xpath('//input[@id="user_password"]')
  page.should have_content('Sign Up')
  page.should have_content('Looks like I forgot my password')
  page.should have_xpath('//button')
end
