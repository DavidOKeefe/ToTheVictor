Feature: Scorecard
  Background:
    Given I am a logged in user

  @scorecard
  Scenario: Creating a new Scorecard
    Given I am at the root path
    And I name my new scorecard 'Five Card Draw'
    When I click the "Let's Play" link
    Then I see 'Game Players'
    And I see 'Five Card Draw'
