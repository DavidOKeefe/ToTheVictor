Feature: Signing in
  Background:
    Given I am a registered user

  @sign_in
  Scenario: Logging in a registered user
    Given I am at the root path
    When I provide a valid email and password
    And I click the 'Log in' button
    Then I see 'Welcome!'
