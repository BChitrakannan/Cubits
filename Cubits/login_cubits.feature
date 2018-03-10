Feature: Cubits Login Feature

Scenario Outline: Successful Login
Given I navigate to the homepage
And I click on Sign in link
Then I enter the email id <email>
And I enter the password <password>
When I click on the login button
Then I should see the welcome text and user profile
Examples:
| email | password |
| chitrub.tech@gmail.com| Test@123 |


Scenario Outline: Invalid Login
Given I navigate to the homepage
And I click on Sign in link
Then I enter the email id <email>
And I enter the password <password>
When I click on the login button
Then I should see the error message

Examples:
| email | password |
| a@b.com| 12!@#$$ |
| chitrub.tech@gmail.com | test@123 |
| chitrub.tech@gmail.com | T est@123 |
|     | Test@123 |
|chitrub.tech@gmail.com |      |
| | |

Scenario: Verifying the presence of all the UI elements in the login homepage

Given I navigate to the homepage
And I click on Sign in link
Then I should see all the UI elements
