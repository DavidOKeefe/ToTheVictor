Feature: Display screen to add players
  Background:
    Given I am a logged in user

  Scenario: Clicking 'Lets Play'
    Given I am at the root path
    When I click the "Let's Play" link
    Then I see 'Game Players'
