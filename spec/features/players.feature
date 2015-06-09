Feature: Players
  Background:
    Given I am a logged in user

  Scenario: Clicking 'Lets Play'
    Given I am at the root path
    When I click the "Let's Play" link
    Then I see 'Game Players'

  @player
  Scenario: Adding a player
    Given I am at the players index
    And I click the "+ Player" link
    When I name the new player "Esme"
    And I click the "Add Player" button
    Then I see "Player created"
    And I see "Esme"
