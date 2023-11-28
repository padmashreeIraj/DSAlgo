#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
Feature: Register page
  I want to use this template for my feature file

  @test
  Scenario Outline: Register page validation
    Given User clicks Get Started
    When User should see Register button in home page and clicks Register
    Then User should navigate to Register page
    When User enters "<username>" "<password>" "<confirm_password>"
    Then User clicks on Register button
    Then User should see "<status_message>"

    Examples: 
      | username     | password  | confirm_password | status_message                                          |
      #| goaldiggers@133 | ssdet@01  | ssdet@01         | New Account Created. You are logged in as goaldiggers@133 |
      | goal_diggers | Ssdet@133 | ssdet$133        | password_mismatch:The two password fields didnt match. |
      #| numpyNinjas1    | sdet133   | sdet12           | New Account Created. You are logged in as goaldiggers@133 |
