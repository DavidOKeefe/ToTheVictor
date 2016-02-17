Feature: Scorecard
  Background:
    Given I am a logged in user

  @scorecard
  Scenario: Creating a new Scorecard
    Given I am at the root path
    And I name my new scorecard 'Five Card Draw'
    When I click the "Let's Play" button
    Then I see 'Game Players'
    And I see 'Five Card Draw'

  @scorecard
  Scenario: Viewing all Scorecards
    Given I am at the root path
    And I have a scorecard named 'Rummy'
    And I have a scorecard named 'Five Card Draw'
    When I click the "View My Scorecards" link
    Then I see 'Rummy'
    And I see 'Five Card Draw'
