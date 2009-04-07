Feature: eTapestry Authentication
  As a remote site
  I want to connect to eTapestry
  So that I can perform other operations
  
  Scenario Outline: Logging In
    Given a valid user 'joe_test'
      And password 'mypass'
    When I call login with '<user>' and '<password>'
    Then I should get result '<result>'
  
  
  
  
