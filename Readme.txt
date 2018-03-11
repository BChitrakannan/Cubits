Cubits – Login Functionality Test Running Procedures

System Requirements:
OS: Windows 

Step 1: 

Install Ruby 2.4.3-2. https://rubyinstaller.org/downloads/ .
Once installed, wait for MSYS2 to get installed.

Step 2: 

After installing Ruby, download chrome driver from the below path:
https://chromedriver.storage.googleapis.com/index.html?path=2.36/
And the path should be added in the Environment variables. You can also add the driver in the bin folder inside Ruby Installation. C:\Ruby24-x64\bin 

Step 3:

Pull the code from https://github.com/BChitrakannan/Cubits/ 

Step 4:

In command prompt, go to the root directory of the project and run the below commands:
i.	ruby -v ? To verify if ruby has been installed
ii.	gem install capybara ? To install capybara libraries
iii.	gem install selenium-webdriver ? to install selenium dependencies
iv.	gem install cucumber ? To install cucumber dependencies
v.	gem install rspec ? To install RSpec dependencies

After running the above commands, run the below commands
i.	cucumber –init ? To initialize the project. 
ii.	cucumber login_cubits.feature


